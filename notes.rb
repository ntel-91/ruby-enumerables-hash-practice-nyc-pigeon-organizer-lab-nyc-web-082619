pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

new_hash = {}
pigeon_data.each do |key, value|
  value.each do |desc, names|
    names.each do |bird_name|
    
      if !new_hash[bird_name]
        new_hash[bird_name] = {}
      end
   
      if !new_hash[bird_name][key]
        new_hash[bird_name][key] = []
      end
      
     p new_hash[bird_name][key].push(desc.to_s)
      
    end
  end
end


