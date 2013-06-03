require 'active_admin'
require "admin_structure/version"
module AdminStructure
  class Engine < ::Rails::Engine
    isolate_namespace AdminStructure 
    config.after_initialize do
        Dir[File.dirname(__FILE__)+"/admin/*.rb"].each do |file|
          require file
        end
    end

  end
end
