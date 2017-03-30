class Address

  @@addresses=[]

  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @country = attributes.fetch(:country)
    @type = attributes.fetch(:type)
    @id = @@addresses.length().+(1)
  end

  attr_reader(:street, :city, :state, :zip, :country, :type, :id)

  define_singleton_method(:all) do
    @@addresses
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@addresses=[]
  end
end #end of Address class
