module AdminStructure
  class Structure < ActiveRecord::Base
    attr_accessible :model_name

    scope :parents, where("level = ?", 1)


    def self.entries
      entries = []
      AdminStructure::Structure.all.each do |entry|
        entry = "#{entry.model_name}".constantize
        entries << entry.all.map{|entry| entry}
      end
      entries[0]
    end

  end
end