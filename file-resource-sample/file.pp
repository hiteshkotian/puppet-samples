# Create a regular file with content as specified.
file { '/tmp/afile' :
  ensure  => 'present',
  content => "this is the content\n",
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0644'
}

# Create a directory with a symbolic link of the file created above.
file { '/tmp/adirectory' :
  ensure => 'directory',
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0755'
}

file { '/tmp/adirectory/alink' :
  ensure => 'link',
  target => '/tmp/afile'
}
