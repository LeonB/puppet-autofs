class autofs::config {

    # make sure auto.master contains auto.direct
    augeas { "/etc/auto.master":
        context => '/files/etc/auto.master',
        onlyif  => 'match */map[.="/etc/auto.direct"] size == 0',
        changes => [
            'set 01 "/-"',
            'set 01/map "/etc/auto.direct"',
        ],
    }

   concat { '/etc/auto.direct':
      owner => root,
      group => root,
      mode  => '0644', #rw,r,r
   }

   concat::fragment { '/etc/auto.direct_header':
      target => '/etc/auto.direct',
      source => 'puppet:///modules/autofs/auto.direct',
      order   => 01,
   }

}
