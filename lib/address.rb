class Address
  @@addresses = []
  attr_reader(:home_address, :work_address)

  define_method(:initialize) do |attributes|
    @home_address = attributes.fetch(:home_address)
    @work_address = attributes.fetch(:work_address)
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@addresses = []
  end

  define_singleton_method(:all) do
    @@addresses
  end
end
