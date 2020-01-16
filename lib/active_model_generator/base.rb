module ActiveModelGenerator
  class Base
    attr_reader :name, :template_name, :file_path, :klass_name

    # @param [String] name
    def initialize(name)
      # @type [String]
      @name = name.underscore
      # @type [String]
      @template_name = "#{suffix}_template.rb.erb"
      # @type [String]
      @file_name = "#{@name}_#{suffix}.rb"
      # @type [Pathname]
      @file_path =  Rails.root.join('app/models').join(@file_name)
      # @type [String]
      @klass_name = "#{@name}_#{suffix}".camelize
    end

    class << self
      # @param [String] name
      # @return [Self]
      def perform(name)
        new(name)
      end
    end

    private

    # @raise [StandardError]
    def suffix
      raise('should define #suffix!')
    end
  end
end
