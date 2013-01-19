class Attachment 

  @@children = ["LinkAttachment", "QuoteAttachment"]

  def self.subclass( s )
    return s.constantize if @@children.include?( s )
    raise "#{s} is not a valid Attachment"
  end

  def self.all_subclasses
    @@children.clone
  end
end
