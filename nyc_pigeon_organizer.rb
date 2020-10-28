def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each {|key, value|
    value.each {|inner_key, inner_value|
      inner_value.each {|name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end
        pigeon_list[name][key] << inner_key.to_s
      }
    }
  }  
  pigeon_list
end