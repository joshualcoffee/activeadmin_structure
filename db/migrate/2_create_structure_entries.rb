class CreateStructureEntries < ActiveRecord::Migration
  def self.up
    create_table :admin_structure_structure_entries do |t|
      t.references :structurable, :polymorphic => true
    end
  end

  def self.down
    drop_table :admin_structure_structure_entries
  end
end