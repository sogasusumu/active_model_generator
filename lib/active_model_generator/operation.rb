require 'active_model_generator/base'

module ActiveModelGenerator
  class Operation < Base
    private

    # @return [String]
    def suffix
      'operation'
    end
  end
end
