module Blog
  class Engine < ::Rails::Engine
    isolate_namespace Blog

    initializer :factories, after: 'factory_girl.set_factory_paths' do
      if defined?(FactoryGirl)
        FactoryGirl.definition_file_paths << File.expand_path('../../../spec/factories', __FILE__)
      end
    end
  end
end
