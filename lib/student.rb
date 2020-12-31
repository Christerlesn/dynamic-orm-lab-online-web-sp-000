require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  ATTRIBUTES = {
    :id => INTEGER PRIMARY KEY,
    :name => TEXT,
    :grade => TEXT
  }
  def self.table_name
    "#{self.to_s.downcase.pluralize}"
  end

  def self.column_names
    #ATTRIBUTES.each {|attribute_name| puts "attribute_name"}
  end

end
