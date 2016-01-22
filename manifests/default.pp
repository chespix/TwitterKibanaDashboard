## LS nodes

node /^ls\d+/ {

  #In this section you can define the parameters for the twitter input and the elasticsearch output plugins.
  #You can setup both, hashtags and location, or you can just comment out one of those

  #By which hashtags you want to filter the twitters?
  $twitter_keywords = [ '#DevOps', '#SRE', '#SysOps' ]
  #By which location you want to filter the twitters? Coordinates go in strict order. Beware that  longitude comes before latitude (google maps gives you the values inversed). For reference
  #https://dev.twitter.com/streaming/overview/request-parameters#locations
  $twitter_locations = '-74,40,-73,41'
  
  #Twitter input config. You need to create a Twitter app to get this values.
  $twitter_consumer_key = "REDACTED"
  $twitter_consumer_secret = "REDACTED"
  $twitter_oauth_token = "REDACTED"
  $twitter_oauth_token_secret = "REDACTED"
  
  #This one is already populated with the IPs defined in vagrantfile.
  $elastic_nodes = ['192.168.124.101:9200', '192.168.124.102:9200', '192.168.124.103:9200']
  
  package { "vim-enhanced": ensure => 'installed', }
  package { "git"         : ensure => 'installed', }
  package { "acpid"       : ensure => 'installed', }
  package { "nss"         : ensure => 'latest',    }

  
  yumrepo { "LogStash":
    baseurl => "http://packages.elastic.co/logstash/2.1/centos",
    descr => "Logstash repository for 2.1.x packages",
    enabled => 1,
    gpgcheck => 1,
	gpgkey => "http://packages.elastic.co/GPG-KEY-elasticsearch",
    ensure => 'present',
  }
  
  class { 'logstash': 
    manage_repo    => false,
    repo_version => '2.1',
    java_install => true,
	require => Yumrepo["LogStash"],
  }
  
  logstash::configfile {'logstash_config':
    content => template('logstash/logstash.conf.erb'),
  }
  
  file { '/etc/logstash/template':
    ensure => 'directory',
  }
  
  file { 'twitter_template.json':
    path  => '/etc/logstash/template/twitter_template.json',
    ensure  => file,
    content  => file("logstash/twitter_template.json"),
  }

}


## ES nodes

node /^el\d+/ {
  package { "vim-enhanced": ensure => 'installed', }
  package { "git"         : ensure => 'installed', }
  package { "acpid"       : ensure => 'installed', }
  package { "nss"         : ensure => 'latest',    }



  class { 'elasticsearch': 
    manage_repo    => true,
    java_install   => true,
    repo_version   => '2.x',
    config => {
      'cluster.name'             => 'es-cluster',
      'index.number_of_replicas' => '1',
      'index.number_of_shards'   => '3',
      'network.host'             => $::ipaddress_eth1,
      'http.cors.enabled'        => true,
      'node.data'                => true,
      'node.master'              => true,
      'discovery.zen.ping.multicast.enabled' => false,
      'discovery.zen.ping.unicast.hosts' => '["192.168.124.101"]',
    }
  }

  elasticsearch::instance { "es01":
    datadir        => "/var/lib/es-data-$hostname",
  }

  elasticsearch::template { "template":
    ensure         => absent
  #  content        => '{"template":"*","settings":{"number_of_replicas":1}}',
  #  host           => $::ipaddress_eth1,
  #  port           => 9200
  }

  elasticsearch::plugin { 'mobz/elasticsearch-head':
    instances      => 'es01'
  }

  elasticsearch::plugin { 'royrusso/elasticsearch-hq/v2.0.3':
    instances      => 'es01'
  }

  elasticsearch::plugin { 'lmenezes/elasticsearch-kopf/2.0':
    instances      => 'es01'
  }

/*   es_instance_conn_validator { 'es01' :
    server => $::ipaddress_eth1,
    port   => '9200',
  } */
  
  class { 'kibana4': 
  version =>  '4.3.0-linux-x64',
  download_path => 'https://download.elastic.co/kibana/kibana',
  #require => Es_Instance_Conn_Validator['es01'],
  elasticsearch_url => "http://$::ipaddress_eth1:9200"
  }

}
