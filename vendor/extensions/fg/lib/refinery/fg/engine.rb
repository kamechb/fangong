module Refinery
  module Fg
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Fg

      engine_name :refinery_fg

      initializer "register refinerycms_professions plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "professions"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_professions_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/profession',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/fg/professions(/.*)?$}
        end
      end

      initializer "register refinerycms_students plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "students"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_students_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/student',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/fg/students(/.*)?$}
        end
      end

      initializer "register refinerycms_works plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "works"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_works_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/work',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/fg/works(/.*)?$}
        end
      end
      
      initializer "register refinerycms_reports plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "reports"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_reports_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/report'
          }
          plugin.menu_match = %r{refinery/fg/reports(/.*)?$}
        end
      end

      initializer "register refinerycms_teachers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "teachers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_teachers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/teacher',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/fg/teachers(/.*)?$}
        end
      end

      initializer "register refinerycms_consults plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "consults"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_consults_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/consult',
            :title => 'user_name'
          }
          plugin.menu_match = %r{refinery/fg/consults(/.*)?$}
        end
      end

      initializer "register refinerycms_jobs plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "jobs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.fg_admin_jobs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/fg/job',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/fg/jobs(/.*)?$}
        end
      end



      config.after_initialize do
        Refinery.register_extension(Refinery::Fg)
        # Refinery.register_extension(Refinery::Professions)
        # Refinery.register_extension(Refinery::Students)
        # Refinery.register_extension(Refinery::Works)
        # Refinery.register_extension(Refinery::Reports)
        # Refinery.register_extension(Refinery::Teachers)
        # Refinery.register_extension(Refinery::Consults)
        # Refinery.register_extension(Refinery::Jobs)
      end
    end
  end
end
