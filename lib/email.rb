class Email
  @@emails = []

  define_method(:initialize) do |attributes|
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
    @id = @@emails.length().+(1)
  end

  attr_reader(:address, :type, :id)

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:clear) do
    @@emails=[]
  end

  define_singleton_method(:find) do |id|
    found_email = nil
    @@emails.each() do |email|
      if email.id().eql?(id.to_i())
        found_email = email
      end
    end
    found_email
  end


end #end of Email class
