memcached module for puppet
===========================

puppet-memcache - puppet classes to help manage memcached instances.

Usage
-----
    node /mc\d{2}.example.com {
      $mcmem = '64M'
      include memcache
    }
    
Variables
---------
* `$mcmem` cache size (will be replaced by `$global::vars::mc_cache_size` if ommited)
* `$mcport` memcache daemon listen port (will be replaced by `$global::vars::mc_listen_port` if ommited)

Author
------
Anton Gerasimov me [...] zyxmasta.com

License and copyright
---------------------

Copyright 2010 Anton Gerasimov.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License 2.0.

See http://www.perlfoundation.org/artistic_license_2_0 for more information.