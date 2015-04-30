class Contact
attr_reader(:first_name, :last_name, :phone_number, :email, :address)
@@contacts = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone_number = {}
    @email = {}
    @address ={}
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:add_phone) do |phone_number|
    @phone_number = phone_number
  end

  define_method(:add_email) do |email|
    @email = email
  end

  define_method(:add_address) do |address|
    @address = address
  end

end
