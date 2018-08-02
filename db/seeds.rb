User.delete_all

1.times do
  user = User.create(email: "rennes@gmail.com", password: "rennesforever")  
end
