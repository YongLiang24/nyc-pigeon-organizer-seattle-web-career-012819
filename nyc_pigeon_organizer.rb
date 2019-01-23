def nyc_pigeon_organizer(data)
  # write your code here!
  hash_bird = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        hash_bird[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = hash_bird.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          hash_bird[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          hash_bird[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          hash_bird[item][:lives] << location
        end
      end
    end
  end

  return hash_bird 
end
