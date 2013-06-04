module AdminStructure
  class StructureEntries < ActiveRecord::Base
    attr_accessible :structurable, :parent
    belongs_to :structurable, :polymorphic => true
    belongs_to :parent, :polymorphic => true
  end
end