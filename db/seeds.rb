p Contact.all

5.times do
  contact = Contact.new(first_name: "John", last_name: "wall")
  contact.save
end