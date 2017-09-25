FIles are backups are stored in filebuckets. Default location is /opt/puppetlabs/puppet/cache/clientbucket/

To get a list of backedup files : puppet filebucket -b /opt/puppetlabs/puppet/cache/clientbucket/ list
To get the content of the backed up file : puppet filebucket -b /var/lib/puppet/clientbucket get <backup-checksum>
To get the difference between the backup and the current file :  puppet filebucket -b /opt/puppetlabs/puppet/cache/clientbucket/ diff <backup-checksum> <file-path>
To restore the backup : puppet filebucket -b /opt/puppetlabs/puppet/cache/clientbucket/ restore <file-path> <backup-checksum>
