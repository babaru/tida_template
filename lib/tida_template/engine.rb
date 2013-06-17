module TidaTemplate
  class Engine < ::Rails::Engine
    initializer 'tida_template.load_tida_template' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end
