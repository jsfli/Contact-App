require('rspec')
require('email')

describe(Email) do

  before() do
    @test_email = Email.new({:address=>"jeffrey.li@cantab.net", :type=> "personal"})
  end

  describe("#initialize") do
    it("set the parameters of a new Email") do
      expect(@test_email.address()).to(eq("jeffrey.li@cantab.net"))
      expect(@test_email.type()).to(eq("personal"))
      expect(@test_email.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("Email array is empty at first") do
      expect(Email.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds an email to the array of emails") do
      @test_email.save()
      expect(Email.all()).to(eq([@test_email]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved emails") do
      @test_email.save()
      Email.clear()
      expect(Email.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns an email by the id number") do
      @test_email.save()
      expect(Email.find(@test_email.id())).to(eq(@test_email))
    end
  end


end #end of Email describe
