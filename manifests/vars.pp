class memcache::vars {

  $mc_dist_name = $::operatingsystem ? {
    FreeBSD => 'memcached',
    default => '',
  }

  $mc_owner = $::operatingsystem ? {
    FreeBSD => 'memcached',
    default => '',
  }

  $mc_group = $::operatingsystem ? {
    FreeBSD => 'memcached',
    default => '',
  }

  $mc_owner_id = $::operatingsystem ? {
    FreeBSD => '211',
    default => '',
  }

  $mc_group_id = $::operatingsystem ? {
    FreeBSD => '211',
    default => '',
  }

  $mc_daemon_name = $::operatingsystem ? {
    FreeBSD => 'memcached',
    default => '',
  }

}
