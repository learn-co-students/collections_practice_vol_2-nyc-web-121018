def begins_with_r(array)
  letter = true
  array.each do |element|
    letter = false if element[0] != "r"
  end
  
    letter
end

def contain_a(array)
    letter = []
    array.each do |element|
        letter << element if element.include?("a")
    end
    
    letter
end

def first_wa(array)
   array.detect do |string|
       string[0, 2] == "wa"
   end
end

def remove_non_strings(array)
  array.delete_if do |string|
    string.is_a?(String) == false
  end
end

def count_elements(array)
  array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

def merge_data(keys, data)
    merged_data = []

keys.each {|i| data.first.map {|a, b| if i.values[0] == a then merged_data << i.merge(b) end}}
    
    merged_data
end

def find_cool(cool)
    
cool.select {|i| i.any? {|k,v| v == "cool"}}
    
end

def organize_schools(schools)
    organized_school = {}
    schools.collect {|k,v| organized_school[v[:location]] = []}
    organized_school.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end


    