node godaikon
{
  include 'java'

  file { '/etc/motd':
      source => "/shared/godaikon.motd"
  }

  file { '/home/vagrant/setup-all':
      ensure => 'link',
      target => "/shared/setup-all"
  }

#  file { '/usr/lib/jvm/java':
#      ensure => 'link',
#      target => "/usr/lib/jvm/java-7-openjdk-amd64"
#  }

  file { '/home/vagrant/README':
      source => "/shared/README"
  }
}
