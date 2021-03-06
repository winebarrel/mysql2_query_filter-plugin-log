require 'mysql2_query_filter'

module Mysql2QueryFilter::Plugin
  class Log < Mysql2QueryFilter::Base
    Mysql2QueryFilter::Plugin.register(:log, self)

    def initialize(options)
      super
      @out = @options[:out] || $stderr
    end

    def filter(sql, client)
      @out << "#{sql}\n"
    end
  end
end
