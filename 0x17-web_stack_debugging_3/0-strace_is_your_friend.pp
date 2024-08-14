exec { 'install-php-module':
  command => '/usr/bin/apt-get install -y php-missing-module',
  unless  => '/usr/bin/php -m | grep missing-module',
}

service { 'apache2':
  ensure    => 'running',
  enable    => true,
  subscribe => Exec['install-php-module'],
}
