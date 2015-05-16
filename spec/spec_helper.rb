require 'mysql2_query_filter/plugin/log'
require 'stringio'

RSpec.configure do |config|
  config.before(:all) do
    Mysql2QueryFilter.enable!
  end

  config.before(:each) do
    Mysql2QueryFilter.clear!
  end
end
