require 'active_support/dependencies'

module ActiveSupport
  module Dependencies
    def require_or_load_with_slices(*args)
      require_or_load_without_slices(*args).tap do |result|
        Slices.load(args.first) if result
      end
    end
    alias_method_chain :require_or_load, :slices
  end
end
