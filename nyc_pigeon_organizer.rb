def nyc_pigeon_organizer(data)
  sorted_pigeons = {}
  
  data.each do |first_point, bird_color|
    bird_color.each do |color, name|
      name.each do |bird_name|
        sorted_pigeons[bird_name] = {:color => [], :gender => [], :lives[]}
      end
    end
  end
  
  birdies = sorted_pigeons.keys
  
  data.each do |first_point, bird_color|
    bird_color.each do |color, name|
      birdies.each do |names|
        if bird_color[name] === birdies[names]
          sorted_pigeons[names][:color] = 
end
