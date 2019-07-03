

def nyc_pigeon_organizer (data)
organized_pigeons = {}


data.each do |first_point, next_level|
  next_level.each do |color, bird_name|
    bird_name.each do |name|
      organized_pigeons[name] = {:color => [], :gender => [], :lives => []}
    end
  end
end



return organized_pigeons
end 