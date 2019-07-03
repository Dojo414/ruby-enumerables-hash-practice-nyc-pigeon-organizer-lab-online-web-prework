

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
      if birdies[object] === colors[name]
        birdies[object][:color] << color[colors].to_s
      end
    end
  end
end

return organized_pigeons
end 
def nyc_pigeon_organizer (data)
  final = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = final.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return final 
end 