require 'pry'

def begins_with_r(arr)
  arr.all? {|word| word[0] == "r"}
end

def contain_a(arr)
  arr.map {|word| word if word.include?("a")}.compact
end

def first_wa(arr)
  arr.find {|word| word[0, 2] == "wa"}
end

def remove_non_strings(arr)
  arr.map {|item| item if item.class == String}.compact
end

def count_elements(arr)
  ref_arr = []
  arr.each {|hsh| ref_arr << hsh if ref_arr.include?(hsh) == false}
  ref_arr.each {
    |item| counter = arr.count(item)
    item[:count] = counter
  }
end

def merge_data(set1, set2)
  merged_arr = [] 
  set2.each { |hsh2|
    hsh2.each { |key, info|
      set1.each { |hsh1|
        hsh1.each { |k, v|
          if v == key
            info[k] = v
            merged_arr << info
          end
        }
      }
    }
  }
  merged_arr
end

def 


