# frozen_string_literal: true

class ResponseGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def generate
    template template_name, file_path
  end

  private

  # @return [ActiveModelGenerator::Response]
  def meta
    @_meta ||= ActiveModelGenerator::Response.perform(name)
  end

  # @return [String]
  def klass_name
    meta.klass_name
  end

  # @return [String]
  def template_name
    meta.template_name
  end

  # @return [Pathname]
  def file_path
    meta.file_path
  end
end
