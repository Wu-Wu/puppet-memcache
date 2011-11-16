class memcache::daemon {

  service { "${memcache::vars::mc_daemon_name}":
    name      => $memcache::vars::mc_daemon_name,
    enable    => true,
    ensure    => running,
    subscribe => [
      Class['memcache::install'],
    ],
    require   => [
      Class['memcache::account'],
      Class['memcache::install'],
    ],
  }

}