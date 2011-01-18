require 'active_support'
require 'active_support/slices/dependencies'
require 'active_support/slices/rails' if defined?(Rails)

module ActiveSupport
  module Slices
    mattr_accessor :slices
    self.slices = {}

    def paths
      Dependencies.autoload_paths
    end

    def load(filename)
      filename = local(filename)
      if slices.key?(filename)
        slices[filename].each { |slice| Dependencies.load(slice) }
      end
    end

    def register
      Dir["{#{paths.join(',')}}/**/*_slice*.rb"].sort.each do |path|
        filename = local(path).sub('_slice', '')
        slices[filename] ||= []
        slices[filename] << path
      end
    end

    def local(path)
      path.sub(pattern, '')
    end

    def pattern
      @pattern || %r((#{paths.join('|')})/)
    end

    extend self
  end
end
