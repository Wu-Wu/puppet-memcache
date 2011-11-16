class memcache::account {

  group { "${memcache::vars::mc_group}":
    gid    => $memcache::vars::mc_group_id,
    ensure => present,
  }

  user { "${memcache::vars::mc_owner}":
    uid       => $memcache::vars::mc_owner_id,
    gid       => $memcache::vars::mc_group_id,
    comment   => 'memory cache daemon',
    home      => '/dev/null',
    shell     => '/sbin/nologin',
    ensure    => present,
    password  => '*',
    require   => Group[$memcache::vars::mc_group],
  }

}
