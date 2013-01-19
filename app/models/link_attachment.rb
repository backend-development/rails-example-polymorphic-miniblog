class LinkAttachment < ActiveRecord::Base
  attr_accessible :url

  has_one :article, :as => :attachment
end
