# Twitter Trends Dashboard
## Based on keywords and geographic location.

![Dashboard Screenshot placeholder](/Dashboard.png?raw=true "Twitter Kibana Dashboard")

### Which are the requirements to run this Dashboard?
You need virtualbox or libvirt and vagrant installed.

https://www.virtualbox.org/ or http://libvirt.org/

https://www.vagrantup.com/

### How to configure it?
First you need to create a twitter app in this page https://apps.twitter.com/. Once you have your consumer key/secret and your oauth token/secret, populate those values in the file **manifest/default.pp**.
To configure the keywords and/or a location to filter the twitter data, you need to edit the file **manifests/default.pp**.
If you want to change the amount of elasticsearch nodes (default to 1), VM hardware settings, or IPs, you can edit the values in the **Vagranfile** file.

### How to run it?
Once you have them installed, download this repo, and then execute inside this repo folder the following command, from a command line prompt:
vagrant up

## that's it!

Now you can locally access your dashboard on
http://192.168.124.101:5601/

If you wish to administer elasticsearch service, I have left some plugins to make it easier:

http://192.168.124.101:9200/_plugin/kopf

http://192.168.124.101:9200/_plugin/hq/

http://192.168.124.101:9200/_plugin/head/

### How it works?
Vagrant created the required VMs to execute the dashboard. It uses puppet to provision the VMs. 
Theres one elasticsearch node which serves as the DB and the search engine, and there's one logstash node which takes twitter and formats the output for elasticsearch. 


### Hey, I dont see nothing in kibana, how's the deal?
Kibana comes empty by default. you need to define a search, a couple of visuals and then a dashboard.
if you want some examples, you can import the three json files into kibana, and they will set you up a nice dashboard.

**TwitterKibanaDashboard.json**

**TwitterKibanaSearch.json**

**TwitterKibanaVisuals.json**


# Enjoy