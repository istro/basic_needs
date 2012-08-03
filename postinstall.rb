#! /usr/bin/env ruby

require 'yaml'
environment = YAML.load_file('../environment.yml')
database = YAML.load_file('config/database.yml')
prod_db = database['production']
prod_db['username'] = environment['DOTCLOUD_DB_SQL_LOGIN']
prod_db['password'] = environment['DOTCLOUD_DB_SQL_PASSWORD']
prod_db['host'] = environment['DOTCLOUD_DB_SQL_HOST']
prod_db['port'] = Integer(environment['DOTCLOUD_DB_SQL_PORT'])

File.open( 'config/database.yml', 'w' ) do |out|
    YAML.dump( database, out )
end

