Media Temple Capistrano deployment
=============

- Built upon https://github.com/Mixd/wp-deploy & https://gist.github.com/paulredmond/6208367
- Used by Connectd.io
- Creates a config.php & .htaccess files locally and remotely
- config.php & .htaccess are stored in a 'shared' folder remotely and are symlinked into the current release folder
- Environments are set in /deploy/ - dev.rb for development and prd.rb for production (multiple environments can be added)

