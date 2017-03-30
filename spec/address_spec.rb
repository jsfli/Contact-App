require('rspec')
require('address')

describe(Address) do

  before() do
    @test_address = Address.new({
      :street=>"street 1", :city=>"city 1",
      :state=>"state 1", :zip=>"zip 1",
      :country=>"Hong Kong", :type=>"home"
      })
  end

  describe("initialize") do
    it("set the parameters of a new address") do
      expect(@test_address.street()).to(eq("street 1"))
      expect(@test_address.city()).to(eq("city 1"))
      expect(@test_address.state()).to(eq("state 1"))
      expect(@test_address.zip()).to(eq("zip 1"))
      expect(@test_address.country()).to(eq("Hong Kong"))
      expect(@test_address.type()).to(eq("home"))
    end
  end

  describe(".all") do
    it("Address array is empty at first") do
      expect(Address.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds an address to the array of addresses") do
      @test_address.save()
      expect(Address.all()).to(eq([@test_address]))
    end
  end

  describe(".clear") do
    it("empties out the array of addresses") do
      @test_address.save()
      Address.clear()
      expect(Address.all()).to(eq([]))
    end
  end


end #end of describe
