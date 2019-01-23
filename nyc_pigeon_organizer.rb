def nyc_pigeon_organizer(data)
  # write your code here!
  hash_bird = {}

  data.each do |key1, v1|
    v1.each do |key2, v2|
      v2.each do |name|
        hash_bird[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  key = hash_bird.keys
  data[:color].each do |key1, v1|
    v1.each do |name|
      key.each do |info|
        if name === info
          hash_bird[info][:color] << key1.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      key.each do |item|
        if bird_name === item
          hash_bird[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      key.each do |item|
        if bird_name === item
          hash_bird[item][:lives] << location
        end
      end
    end
  end

  return hash_bird 
end
