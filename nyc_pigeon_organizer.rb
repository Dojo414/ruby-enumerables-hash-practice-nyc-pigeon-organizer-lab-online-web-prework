

def nyc_pigeon_organizer (data)
organized_pigeons = {}

# Establish the new has for the data

data.each do |first_point, next_level|
  next_level.each do |color, bird_name|
    bird_name.each do |name|
      organized_pigeons[name] = {:color => [], :gender => [], :lives => []}
    end
  end
end

birdies = organized_pigeons.keys

# Place the colors into the new hash

data[:color].each do |upper_level, color|
  color.each do |name|
    birdies.each do |object|
      if object === name
        organized_pigeons[object][:color] << upper_level.to_s
      end
    end
  end
end

#Repeat for gender

data[:gender].each do |upper_level, gender|
  gender.each do |name|
    birdies.each do |object|
      if object === name
        organized_pigeons[object][:gender] << upper_level.to_s
      end
    end
  end
end


#Repeat for lives

data[:lives].each do |upper_level, lives|
  lives.each do |name|
    birdies.each do |object|
      if object === name
        organized_pigeons[object][:lives] << upper_level.to_s
      end
    end
  end
end

return organized_pigeons
end 
