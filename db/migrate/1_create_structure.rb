class CreateStructure < ActiveRecord::Migration
  def self.up
    create_table :admin_structure_structures do |t|
      t.string :model_name
    end
  end

  def self.down
    drop_table :admin_structure_structures
  end
end
