require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def table_name
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS #{self.class.to_s.downcase.pluralize} ();
    SQL
    DB[:conn].execute(sql)
  end

end
