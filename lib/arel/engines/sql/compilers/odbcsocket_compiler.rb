module Arel
  module SqlCompiler
    class OdbcSocketCompiler < GenericCompiler
      def select_sql
        sql = super
        
        if limit = sql.match(/LIMIT (\d+)/)
          limit_clause, limit = limit.to_a[0,2]
          
          sql.sub! limit_clause, ''
          sql.sub! 'SELECT', "SELECT TOP #{limit}"
        end
        
        sql.gsub! /#{relation.name}\.([a-zA-Z0-9_]+)/ do |match|
          column_name = $1
          column = relation.table.columns.find {|c| c.name.to_s == column_name}
          
          "#{relation.name}.#{column.sql_column_name.to_s}"
        end
        
        sql
      end
    end
  end
end