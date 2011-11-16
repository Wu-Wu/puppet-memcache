class memcache::config {

  file { "${global::vars::default_rc_conf_path}/${memcache::vars::mc_daemon_name}":
    owner   => $global::vars::default_owner,
    group   => $global::vars::default_group,
    mode    => '0644',
    backup  => false,
    content => template('memcache/memcache.erb'),
    require => Class['memcache::install'],
    notify  => Class['memcache::daemon'],
  }

}
