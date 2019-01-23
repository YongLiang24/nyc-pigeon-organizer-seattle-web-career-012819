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
  data[:gender].each do |key1, v1|
    v1.each do |name|
      key.each do |info|
        if name === info
          hash_bird[info][:gender] << key1.to_s
        end
      end
    end
  end
  data[:lives].each do |k1, v1|
    v1.each do |name|
      key.each do |info|
        if name === info
          hash_bird[info][:lives] << k1
        end
      end
    end
  end

  return hash_bird
end
