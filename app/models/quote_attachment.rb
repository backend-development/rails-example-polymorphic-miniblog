class QuoteAttachment < ActiveRecord::Base
  attr_accessible :author, :text, :url

  has_one :article, :as => :attachment
end
