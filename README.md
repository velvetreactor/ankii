# Troubleshooting

## Can't find the 'libpq-fe.h header

If you're trying to install the `pg` gem and are seeing the following error:

```bash
Installing pg 1.5.4 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    current directory: /Users/davidko/.asdf/installs/ruby/3.2.2/lib/ruby/gems/3.2.0/gems/pg-1.5.4/ext
/Users/davidko/.asdf/installs/ruby/3.2.2/bin/ruby extconf.rb
Calling libpq with GVL unlocked
checking for pg_config... no
checking for libpq per pkg-config... no
Using libpq from
checking for libpq-fe.h... no
Can't find the 'libpq-fe.h header
*****************************************************************************
```

You need Postgres library files for the gem to get compiled properly:

1. `brew install libpq`
2. `gem install pg -- --with-opt-dir="/opt/homebrew/opt/libpq"`