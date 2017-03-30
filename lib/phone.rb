class Phone
  @@phones =[]

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @id = @@phones.length().+(1)
  end

  attr_reader(:area_code, :number, :type, :id)

end #end of Phone class
