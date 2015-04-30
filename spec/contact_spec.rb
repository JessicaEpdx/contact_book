require('rspec')
require('contact')

describe(Contact) do

  before() do
    Contact.clear
  end
  describe('#first_name') do
    it("returns contact's first name") do
      person = Contact.new({:first_name=> "Brent" , :last_name=> "Bailey"})
      expect(person.first_name).to(eq("Brent"))
    end
  end
  describe('#save') do
    it("saves the contact to the class") do
      person = Contact.new({:first_name=> "Brent" , :last_name=> "Bailey"})
      person.save()
      expect(Contact.all()).to(eq([person]))
    end
  end

  describe('.all') do
    it("shoult be empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end





end
