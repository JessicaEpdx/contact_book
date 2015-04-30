require('rspec')
require('contact')
require('phone')

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
      person2= Contact.new({:first_name=> "Jessica" , :last_name=> "Engel"})
      person2.save()
      expect(Contact.all()).to(eq([person, person2]))
    end
  end

  describe('.all') do
    it("shoult be empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end
end

describe(Phone) do

  before() do
    Phone.clear
  end
  describe('#home_phone') do
    it("returns contact's home phone") do
      person = Phone.new({:home_phone=>'867-5309', :cellphone=>'', :work_phone=>''})
      person.save()
      expect(person.home_phone).to(eq('867-5309'))
    end
  end
end
