require 'active_model_generator/base'

module ActiveModelGenerator
  class Request < Base
    private

    # @return [String]
    def suffix
      'request'
    end
  end
end
