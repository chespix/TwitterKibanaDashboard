require 'spec_helper_acceptance'

describe 'consul class' do

  context 'UI parameters' do
    # Using puppet_apply as a helper
    it 'should work with no errors based on the UI example' do
      pp = <<-EOS
        class { 'consul':
          version     => '0.5.2',
          config_hash => {
            'datacenter'  => 'east-aws',
            'data_dir'    => '/opt/consul',
            'ui_dir'      => '/opt/consul/ui',
            'client_addr' => '0.0.0.0',
            'log_level'   => 'INFO',
            'node_name'   => 'foobar',
            'server'      => true
          }
        }
      EOS

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    describe file('/opt/consul') do
      it { should be_directory }
    end

    describe file('/opt/consul/ui') do
      it { should be_linked_to '/opt/consul/0.5.2_web_ui' }
    end

    describe service('consul') do
      it { should be_enabled }
    end

    describe command('consul version') do
      its(:stdout) { should match /Consul v0\.5\.2/ }
    end

  end
end
