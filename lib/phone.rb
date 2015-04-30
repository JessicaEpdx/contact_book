class Phone
  @@phones = []
  attr_reader(:home_phone, :cellphone, :work_phone)
  define_method(:initialize) do |attributes|
    @home_phone = attributes.fetch(:home_phone)
    @cellphone = attributes.fetch (:cellphone)
    @work_phone = attributes.fetch (:work_phone)
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:all) do
    @@phones
  end
  define_singleton_method(:clear) do
    @@phones = []
  end
end
