require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash| # each through the data of the contact which would be jon and freddy
    #we are passing throught the person as the name, and contact_detals_hash is all of the info in the hash
    if person == "Freddy Mercury" #one we get to freddy run the next each
      contact_details_hash.each do |attribute, data| #the attribute is the key and data is the value
        if attribute == :favorite_ice_cream_flavors
          data.delete_if {|ice_cream| ice_cream == "strawberry"} #if there is strawberry we will delete it
        end
      end
    end
  end
end
