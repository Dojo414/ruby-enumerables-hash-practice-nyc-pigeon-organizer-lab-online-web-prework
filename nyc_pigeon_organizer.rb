

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
  color.each do |colors, name|
    birdies.each do |object|
      if object === name
        birdies[object][:color] << upper_level.to_s
      end
    end
  end
end

return organized_pigeons
end 
