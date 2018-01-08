class { 'nginx': }

nginx::resource::upstream { 'golangapp':
  members => [
    'server ec2-52-33-99-17.us-west-2.compute.amazonaws.com',
    'server ec2-52-35-225-196.us-west-2.compute.amazonaws.com',
  ],
}

nginx::resource::server { 'ec2-34-216-32-156.us-west-2.compute.amazonaws.com':
  listen_port => 80,
  proxy       => 'http://golangapp',
}
