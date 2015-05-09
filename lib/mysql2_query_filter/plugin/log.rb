require 'mysql2_query_filter'

module Mysql2QueryFilter::Plugin
  class Log < Filter
    Mysql2QueryFilter.register(:log, self)

    def filter(sql)
      out = @options[:out] || $stderr
      out.puts(sql)
    end
  end
end
