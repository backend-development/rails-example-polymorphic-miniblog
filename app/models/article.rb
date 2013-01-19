class Article < ActiveRecord::Base
  attr_accessible :title, :attachment_attributes

  belongs_to :attachment, :polymorphic => true
  accepts_nested_attributes_for :attachment
end
