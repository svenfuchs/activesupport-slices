module Slices
  class Railtie < Rails::Railtie
    initializer 'activesupport.slices.register' do |app|
      ActiveSupport::Slices.register
    end
  end
end
