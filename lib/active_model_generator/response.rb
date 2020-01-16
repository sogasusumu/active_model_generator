require 'active_model_generator/base'

module ActiveModelGenerator
  class Response < Base
    private

    # @return [String]
    def suffix
      'response'
    end
  end
end
