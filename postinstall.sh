#! /usr/bin/env bash

ruby postinstall.rb
rake db:create
rake db:migrate