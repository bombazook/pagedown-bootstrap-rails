module PageDownBootstrap
  class Engine < ::Rails::Engine
    engine_name "pagedown_bootstrap"
    initializer "add simple_form input if simple_form defined" do
      require 'pagedown_bootstrap/simple_form' if defined? SimpleForm
    end
  end
end
