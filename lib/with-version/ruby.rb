# frozen_string_literal: true

require_relative 'ruby/version'

module With
  module Version
    module Ruby
      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def with_minimum_ruby(version)
          if With::Version::Ruby::Version.new(RUBY_VERSION).release >= With::Version::Ruby::Version.new(version)
            yield
          end
        end
      end
    end
  end
end
