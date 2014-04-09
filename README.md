Media Temple Capistrano deployment
=============

- Built upon https://github.com/Mixd/wp-deploy & https://gist.github.com/paulredmond/6208367
- Used by Connectd.io
- Creates a config.php & a .htaccess file locally and remotely
- config.php & .htaccess are stored in a 'shared' folder remotely and are symlinked into the current release folder
- Environments are set in /deploy/ - dev.rb for development and prd.rb for production (multiple environments can be added)

Dependencies
---------------
Install Ruby dependencies using Bundler (required for Capistrano to run):

```sh
$ bundle install
```

Terminal Commands
---------------

Sets up local config files (asks for local development URL): 
```sh
$ bundle exec cap site:setup_local
```
---------------

Sets up remote config files:
```sh
$ bundle exec cap dev/prd site:setup
```

---------------

For deploying from development branch to development URL:
```sh
$ bundle exec cap dev deploy
```

---------------

For deploying from production branch to production URL:
```sh
$ bundle exec cap prd deploy
```

---------------

Pulls database from remote to local (overriding the local database):
```sh
$ bundle exec cap dev/prd db:pull
```

---------------

Pulls database from local to remote (overridng the remote database):
```sh
$ bundle exec cap dev/prd db:push
```


