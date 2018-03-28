class Contact

  @@contact_list = []
  @@next_id=1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note

    @@id = @@next_id
    @@next_id+=1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, notes)
    new_contact = Contact.new(first_name, last_name, email, notes)
    add_phone_book(new_contact)
    return new_contact
  end

  def self.add_phone_book(contact)
    @@contact_list.push(contact)
  end

  # This method should return all of the existing contacts
  def self.all
    return @@contact_list
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find

  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name

  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

  # READERS
  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def email
    return @email
  end

  def note
    return @note
  end

  # WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def note=(note)
    @note = note
  end

end
##########################################3
p contact = Contact.new('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
p contact.email # => 'bettymakes@gmail.com'
p contact.note = 'Loves HTML & CSS'
p contact
puts

p test_contact = Contact.create('Bit', 'Tester', 'bittest@gmail.com', 'Loves coding')
p test_contact2 = Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
#p Contact.add_phone_book(test_contact)
p Contact.all
