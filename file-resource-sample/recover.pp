file { '/tmp/recover.txt':
  ensure  => 'file',
  content => "this is the content\nanother line\none more line\n",
  # Set the backup directory to main. Use when it has to be only applied for selective resources.
  # backup  => 'main'
}

# Change default for all file resources.
File  {
  backup => 'main'
}

# Specify a customer file bucket.
filebucket { 'main':
  path => '/var/lib/puppet/clientbucket'
}
