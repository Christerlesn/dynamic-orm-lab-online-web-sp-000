require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize(attributes={})
    attributes.each do |attr_name, attr_value|
      self.send("#{attr_name}=", attr_value)
    end
  end
end
