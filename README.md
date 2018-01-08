# Scenario

In this scenario we are configuring 3 AWS instances, 2x App nodes and 1x Web node.

The following assumptions are made.

1. You have an AMI (Amazon machine image) that has the Puppet client software and puppet.conf installed and configured with "puppetmaster" as the Puppet server.

2. You have a Puppet server that you have named "puppetmaster" that is accessible to the AWS instances

3. You have the AWS CLI installed on your local PC.

4. Your local PC has BASH installed and curl.

5. The App nodes are named ec2-52-33-99-17.us-west-2.compute.amazonaws.com and ec2-52-35-225-196.us-west-2.compute.amazonaws.com and the Web node is called ec2-34-216-32-156.us-west-2.compute.amazonaws.com 
edit manifests/init.pp and roundrobincheck.sh to change this to match your environment

Follow the steps below

1. SSH to the App nodes, Web node and puppetmaster and run the following command 'git clone https://github.com/adaml52/Scenario'

2. Run the following command on your local PC 'git clone https://github.com/adaml52/Scenario'

3. Run the configureinstances.sh script on your local PC

4. Run the addpuppetcode.sh script on "puppetmaster"

5. Run the puppetrun.sh script on the AWS instances we created.

6. Run the roundrobincheck.sh script on your local PC to make sure the Web node is load balancing between the app nodes, this will hit the load balancer 20 times, if the round robin is working properly you should see an even split between the hostnames in the output.

