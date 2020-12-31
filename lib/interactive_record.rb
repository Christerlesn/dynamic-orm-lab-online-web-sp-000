require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  module ClassMethods
      def table_name
        "#{self.to_s.downcase.pluralize}"
      end
  end
  module InstanceMethods

  end
end
