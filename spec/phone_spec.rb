require('rspec')
require('phone')

describe(Phone) do

  before() do
    Phone.clear()
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

  describe(".all") do
    it("Phone array is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a CD to the array of CDs") do
      @test_phone.save()
      expect(Phone.all()).to(eq([@test_phone]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved phone numbers") do
      @test_phone.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a phone number by the id number") do
      @test_phone.save()
      expect(Phone.find(@test_phone.id())).to(eq(@test_phone))
    end
  end

end #end of describe for Phone class
