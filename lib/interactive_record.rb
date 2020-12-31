require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def table_name
    self.class.to_s.downcase.plural
  end
  
end