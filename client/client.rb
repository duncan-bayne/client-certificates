#!/usr/bin/env ruby

require 'restclient'

client = RestClient::Resource.new('https://localhost/',
                                  :ssl_client_cert  =>  OpenSSL::X509::Certificate.new(File.read('client.pem')),
                                  :ssl_client_key   =>  OpenSSL::PKey::RSA.new(File.read('client.key')),
                                  :verify_ssl       =>  OpenSSL::SSL::VERIFY_NONE)
puts client.get


