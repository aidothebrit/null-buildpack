#!/usr/bin/env ruby

require 'yaml'

payload = {
  'config_vars' => {
	 'RACK_ENV' => 'PRODUCTION'
  },
  'default_process_types' => {
	  'web' => 'start.sh'
  }
}.to_yaml

puts payload
