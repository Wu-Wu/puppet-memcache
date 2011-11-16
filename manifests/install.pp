class memcache::install {

  package { "${memcache::vars::mc_dist_name}":
    ensure   => present,
    provider => $global::vars::default_provider,
  }

}
