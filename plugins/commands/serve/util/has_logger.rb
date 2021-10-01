module VagrantPlugins
  module CommandServe
    module Util
      # Creates a new logger instance and provides method
      # to access it
      module HasLogger
        def logger
          @logger
        end

        def initialize(*args, **opts, &block)
          @logger = Log4r::Logger.new(self.class.name.downcase)

          if self.method(:initialize).super_method.parameters.empty?
            super()
          else
            super
          end
        end
      end
    end
  end
end
