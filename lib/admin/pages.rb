if defined?(ActiveAdmin)
  ActiveAdmin.register_page "Sortable" do
    content do
      render "/testing" 
    end

  controller do
    def index
      @entries = AdminStructure::Structure.entries
    end
  end

  end
end