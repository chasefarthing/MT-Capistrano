Media Temple Capistrano deployment
=============

- Built upon https://github.com/Mixd/wp-deploy & https://gist.github.com/paulredmond/6208367
- Used by Connectd.io
- Creates a config.php & a .htaccess file locally and remotely
- config.php & .htaccess are stored in a 'shared' folder remotely and are symlinked into the current release folder
- Environments are set in /deploy/ - dev.rb for development and prd.rb for production (multiple environments can be added)

```sh
$ bundle exec cap site:setup_local
```
Sets up local config files (asks for local development URL)


```sh
$ bundle exec cap dev/prd site:setup
```
Sets up remote config files

```sh
$ bundle exec cap dev deploy
```
For deploying from development branch to development URL

```sh
$ bundle exec cap prd deploy
```
For deploying from production branch to production URL

```sh
$ bundle exec cap dev/prd db:pull
```
Pulls database from remote to local (overriding the local database)

```sh
$ bundle exec cap dev/prd db:push
```
Pulls database from local to remote (overridng the remote database)

