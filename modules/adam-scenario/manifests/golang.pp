class { 'golang':
  version   => '1.9.2',
  workspace => '/usr/local/src/go',
}

file { '/usr/local/src/go/scenario':
  ensure    => 'directory',
}

file { '/usr/local/src/go/scenario/scenario.go':
  source    => ["puppet:///modules/adam-scenario/scenario.go"]
}

