# ArrayMap below Hashmap

# class HashMap
#   # 2D array
#
#   def initialize
#     @hash_map = {}
#   end
#
#   def assign(key, val)
#     hash_map[key] = val
#   end
#
#   def lookup(key)
#     hash_map[key]
#   end
#
#   def remove(key)
#     hash_map = hash.reject{|k,v| k == key}
#   end
#
#   def show
#     puts hash_map
#   end
# end

class ArrayMap
  # I got carried away. I'm going home now.

  attr_accessor :array_map

  def initialize
    @array_map = []
  end

  def assign(key, val)
    swap?(key)

    array_map << [key, val]
    puts "Pair added."
  end

  def lookup(key)
    return nil unless array_map.any?{|k,v| k == key}
    array_map.select{|k,v| k == key}
  end

  def remove(key)
    array_map.reject!{|k,v| k == key}
    puts "Pair removed."
  end

  def show
    p array_map
  end

  def help
    puts "Contained methods: foo = ArrayMap.new() // .assign(k,v) +[k,v] // .remove(k) => -[k,v] // .lookup(k) => v | nil // .show => foo_data // .help"
    return "GOOD LUCK, FRIEND"
  end

  private

  def swap?(key)
    if lookup(key)
       if continue?
         remove(key)
       else
         return "Pair not added."
       end
    end

    return nil
  end

  def continue?
    puts "Key already exists! Continue? (y/n)"
    print "> "

    begin
      response = gets.chomp
      raise unless response =~ /y|n|Y|N/
    rescue
      puts "please enter alike 'yes | no' "
      print "> "
      retry
    end

    # returns 0 if match, then boolean
    (response =~ /y|Y/) == 0
  end

end # class end
