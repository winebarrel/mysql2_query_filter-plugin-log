# Mysql2QueryFilter::Plugin::Log

Logging plug-in for [Mysql2QueryFilter](https://github.com/winebarrel/mysql2_query_filter).

[![Gem Version](https://badge.fury.io/rb/mysql2_query_filter-plugin-log.svg)](http://badge.fury.io/rb/mysql2_query_filter-plugin-log)
[![Build Status](https://travis-ci.org/winebarrel/mysql2_query_filter-plugin-log.svg?branch=master)](https://travis-ci.org/winebarrel/mysql2_query_filter-plugin-log)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mysql2_query_filter-plugin-log'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mysql2_query_filter-plugin-log

## Usage

```ruby
require 'mysql2_query_filter'

Mysql2QueryFilter.configure do |filter|
  filter.plugin :log #, out: $stderr
end

Mysql2QueryFilter.enable!

client = Mysql2::Client.new(host: 'localhost', username: 'root')
client.query('show databases')
```
