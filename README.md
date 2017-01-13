# Whois::Hash

Provides `to_h` method to Whois::Record of [whois  gem](https://github.com/weppos/whois).

## Usage

```ruby
require 'whois-hash'

puts Whois::Client.new.lookup('iana.org').to_h
```

shows

```
{:disclaimer=>
  "Access to ...... snip ......",
 :domain=>"iana.org",
 :domain_id=>"D1073204-LROR",
 :status=>
  ["serverDeleteProhibited https://icann.org/epp#serverDeleteProhibited",
   "serverRenewProhibited https://icann.org/epp#serverRenewProhibited",
   "serverTransferProhibited https://icann.org/epp#serverTransferProhibited",
   "serverUpdateProhibited https://icann.org/epp#serverUpdateProhibited"],
 :available?=>false,
 :registered?=>true,
 :created_on=>1995-06-05 04:00:00 UTC,
 :updated_on=>2015-07-07 17:20:50 UTC,
 :expires_on=>2017-12-08 17:00:53 UTC,
 :registrar=>{},
 :registrant_contacts=>
  [{:id=>"CR12376519",
    :type=>1,
    :name=>"Domain Administrator",
    :organization=>"ICANN",
    :address=>"12025 Waterfront Drive\nSuite 300",
    :city=>"Los Angeles",
    :zip=>"90094-2536",
    :state=>"California",
    :country=>nil,
    :country_code=>"US",
    :phone=>"+1.4242171313",
    :fax=>"+1.4242171313",
    :email=>"domain-admin@icann.org",
    :url=>nil,
    :created_on=>nil,
    :updated_on=>nil}],
 :admin_contacts=>
  [{:id=>"CR12376521",
    :type=>2,
    :name=>"Domain Administrator",
    :organization=>"ICANN",
    :address=>"12025 Waterfront Drive\nSuite 300",
    :city=>"Los Angeles",
    :zip=>"90094-2536",
    :state=>"California",
    :country=>nil,
    :country_code=>"US",
    :phone=>"+1.4242171313",
    :fax=>"+1.4242171313",
    :email=>"domain-admin@icann.org",
    :url=>nil,
    :created_on=>nil,
    :updated_on=>nil}],
 :technical_contacts=>
  [{:id=>"CR12376520",
    :type=>3,
    :name=>"Domain Administrator",
    :organization=>"ICANN",
    :address=>"12025 Waterfront Drive\nSuite 300",
    :city=>"Los Angeles",
    :zip=>"90094-2536",
    :state=>"California",
    :country=>nil,
    :country_code=>"US",
    :phone=>"+1.4242171313",
    :fax=>"+1.4242171313",
    :email=>"domain-admin@icann.org",
    :url=>nil,
    :created_on=>nil,
    :updated_on=>nil}],
 :nameservers=>
  [{:name=>"ns.icann.org", :ipv4=>nil, :ipv6=>nil},
   {:name=>"a.iana-servers.net", :ipv4=>nil, :ipv6=>nil},
   {:name=>"b.iana-servers.net", :ipv4=>nil, :ipv6=>nil},
   {:name=>"c.iana-servers.net", :ipv4=>nil, :ipv6=>nil}],
 :contacts=>
  [{:id=>"CR12376519",
    :type=>1,
    :name=>"Domain Administrator",
    # ...... snip ......
    :updated_on=>nil}],
 :response=>
  [{:body=>
     "Domain Name: IANA.ORG\r\n ...... snip ......",
    :host=>"whois.pir.org"}]}
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'whois-hash', :github => 'dayflower/whois-hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whois-hash

## See also

This module depends heavily on following gems.

- https://github.com/weppos/whois
- https://github.com/weppos/whois-parser

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dayflower/whois-hash.
