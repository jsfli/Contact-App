require('rspec')
require('phone')

describe(Phone) do

  before() do
    @test_phone = Phone.new({:area_code => 852, :number => 23456789, :type => "home"})
  end

  describe("#initialize") do
    it("set the parameters of a new phone number") do
      expect(@test_phone.area_code()).to(eq(852))
      expect(@test_phone.number()).to(eq(23456789))
      expect(@test_phone.type()).to(eq("home"))
      expect(@test_phone.id()).to(eq(1))
    end
  end

end #end of describe for Phone class
