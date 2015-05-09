require 'mysql2_query_filter'

module Mysql2QueryFilter::Plugin
  class Log < Filter
    Mysql2QueryFilter::Plugin.register(:log, self)

    def initialize(options)
      super
      @out = @options[:out] || $stderr
    end

    def filter(sql, query_options)
      @out << "#{sql}\n"
    end
  end
end
