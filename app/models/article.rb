class Article < ActiveRecord::Base
  attr_accessible :title

  belongs_to :attachment, :polymorphic => true
end
