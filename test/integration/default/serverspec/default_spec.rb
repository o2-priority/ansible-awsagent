require '/tmp/kitchen/spec/spec_helper.rb'

package_name = 'awsagent'

if os[:family] =~ /centos|redhat/
  package_name = 'AwsAgent'
end

describe package(package_name) do
  it { should be_installed }
end

# On a non-ec2 host, awsagent will fail to start successfully 
#describe service('awsagent') do
#  it { should be_running }
#end
