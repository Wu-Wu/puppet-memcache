class memcache {

  require global::vars
  require memcache::vars

  include memcache::account
  include memcache::install
  include memcache::config
  include memcache::daemon

}
