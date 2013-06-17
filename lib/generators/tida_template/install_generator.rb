module TidaTemplate #:nodoc:
  module Generators #:nodoc:
    class InstallGenerator < Rails::Generators::Base #:nodoc:

      source_root File.expand_path('../templates', __FILE__)

      def modify_some_files
        # modify application.rb
        autoload_path_line = 'config.autoload_paths += %W(#{config.root}/extras)'
        gsub_file 'config/application.rb', /(#{Regexp.escape(autoload_path_line)})/mi do |match|
          "#{match}\n\tconfig.autoload_paths += %W(\#{config.root}/lib)\n"
        end

        time_zone_line = "config.time_zone = 'Central Time (US & Canada)'"
        gsub_file 'config/application.rb', /(#{Regexp.escape(time_zone_line)})/mi do |match|
          "#{match}\n\tconfig.time_zone = 'Beijing'\n"
        end

        locale_line = 'config.i18n.default_locale = :de'
        gsub_file 'config/application.rb', /(#{Regexp.escape(locale_line)})/mi do |match|
          "#{match}\n\tconfig.i18n.locale = 'zh-CN'\n\tconfig.i18n.default_locale = 'zh-CN'\n"
        end
      end

      def copy_stuff #:nodoc:
        # copy layouts
        copy_file 'app/views/layouts/single.html.erb', 'app/views/layouts/single.html.erb'
        copy_file 'app/views/layouts/application.html.erb', 'app/views/layouts/application.html.erb'

        # copy shared
        copy_file 'app/views/shared/components/_article_title.html.erb', 'app/views/shared/components/_article_title.html.erb'
        copy_file 'app/views/shared/components/_date_jumper.html.erb', 'app/views/shared/components/_date_jumper.html.erb'
        copy_file 'app/views/shared/components/_modal.html.erb', 'app/views/shared/components/_modal.html.erb'
        copy_file 'app/views/shared/components/_notification.html.erb', 'app/views/shared/components/_notification.html.erb'
        copy_file 'app/views/shared/components/_page_menu.html.erb', 'app/views/shared/components/_page_menu.html.erb'
        copy_file 'app/views/shared/components/_page_title.html.erb', 'app/views/shared/components/_page_title.html.erb'
        copy_file 'app/views/shared/components/_toolbar.html.erb', 'app/views/shared/components/_toolbar.html.erb'

        # copy devise view
        copy_file 'app/views/devise/sessions/new.html.erb', 'app/views/devise/sessions/new.html.erb'

        # copy rails template files
        copy_file 'rails_templates/erb/scaffold/_form.html.erb', 'lib/templates/erb/_form.html.erb'
        copy_file 'rails_templates/erb/scaffold/index.html.erb', 'lib/templates/erb/index.html.erb'
        copy_file 'rails_templates/erb/scaffold/new.html.erb', 'lib/templates/erb/new.html.erb'
        copy_file 'rails_templates/erb/scaffold/edit.html.erb', 'lib/templates/erb/edit.html.erb'
        copy_file 'rails_templates/erb/scaffold/show.html.erb', 'lib/templates/erb/show.html.erb'
        copy_file 'rails_templates/rails/scaffold_controller/controller.rb', 'lib/templates/rails/scaffold_controller/controller.rb'

        # copy renders
        copy_file 'renderers/sub_navigation_bar_renderer.rb', 'lib/tida/renderers/sub_navigation_bar_renderer.rb'
        copy_file 'renderers/top_navigation_bar_renderer.rb', 'lib/tida/renderers/top_navigation_bar_renderer.rb'

        # copy paperclip attachment access token
        copy_file 'paperclip/attachment_access_token.rb', 'lib/tida/paperclip/attachment_access_token.rb'

        # copy initializers
        copy_file 'config/initializers/navigation_renderers.rb', 'config/initializers/navigation_renderers.rb'
        copy_file 'config/initializers/quiet_assets.rb', 'config/initializers/quiet_assets.rb'

        # copy locales
        copy_file 'config/locales/devise.zh-CN.yml', 'config/locales/devise.zh-CN.yml'
        copy_file 'config/locales/simple_form.zh-CN.yml', 'config/locales/simple_form.zh-CN.yml'
        copy_file 'config/locales/zh-CN.yml', 'config/locales/zh-CN.yml'

        #copy other configurations
        copy_file 'config/application.yml', 'config/application.yml'
        copy_file 'settingslogic/settings.rb', 'lib/settings.rb'
      end

      def run_other_generators
        generate 'devise:install'
        generate 'devise user'
        generate 'simple_form:install --bootstrap'
        generate 'wice_grid:install'
        generate 'navigation_config'
      end

    end
  end
end
