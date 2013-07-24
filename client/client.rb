#!/usr/bin/env ruby

require 'restclient'

client = RestClient::Resource.new('https://localhost/service.json',
                                  :ssl_client_cert  =>  OpenSSL::X509::Certificate.new(File.read('install/client.pem')),
                                  :ssl_client_key   =>  OpenSSL::PKey::RSA.new(File.read('install/client.key'), 'keefnmick27'),
                                  :verify_ssl       =>  OpenSSL::SSL::VERIFY_NONE)
client.get

