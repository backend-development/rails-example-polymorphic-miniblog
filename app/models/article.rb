class Article < ActiveRecord::Base
  attr_accessible :title, :text, :attachment_type, :attachment_attributes

  belongs_to :attachment, :polymorphic => true, :dependent => :destroy
  accepts_nested_attributes_for :attachment
end
