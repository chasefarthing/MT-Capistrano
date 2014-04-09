############################################
# Setup Server
############################################

set :application, "{{ Development site URL }}" 
server "#{host}", :app

############################################
# Setup Git
############################################

set :branch, "development" # development site branch