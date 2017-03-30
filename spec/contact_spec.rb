require('rspec')
require('contact')
require ('phone')

describe(Contact) do

  before() do
    Contact.clear()
    @test_contact = Contact.new({
      :first_name=>"Jeffrey", :last_name=>"Li",
      :job_title=>"Student", :company=>"Accelerate"
      })
  end

  describe("initialize") do
    it("sets the parameters of a new Contact") do
      expect(@test_contact.first_name()).to(eq("Jeffrey"))
      expect(@test_contact.last_name()).to(eq("Li"))
      expect(@test_contact.job_title()).to(eq("Student"))
      expect(@test_contact.company()).to(eq("Accelerate"))
      expect(@test_contact.id()).to(eq(1))
      expect(@test_contact.phones()).to(eq([]))
      expect(@test_contact.addresses()).to(eq([]))
      expect(@test_contact.emails()).to(eq([]))
    end
  end

  describe(".all") do
    it("is an empty list of contacts to begin with") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a contact to the array of contacts") do
      @test_contact.save()
      expect(Contact.all()).to(eq([@test_contact]))
    end
  end

  describe(".clear") do
    it("clear all contacts in the array of contacts") do
      @test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a contact by the id number") do
      @test_contact.save()
      expect(Contact.find(@test_contact.id())).to(eq(@test_contact))
    end
  end

  describe("#add_phone") do
    it("adds a new number to a contact") do
      @test_contact
      test_phone = Phone.new({:area_code => 852, :number => 23456789, :type => "home"})
      @test_contact.add_phone(test_phone)
      expect(@test_contact.phones()).to(eq([test_phone]))
    end
  end


end
