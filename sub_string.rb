
def sub_string(value,dic)
  dic_of_value=Hash.new(0)

  value = value.downcase
  dic   = dic.map(&:downcase)

  dic.each do |item|
    #how many times  item appeared in value
    appeared_time=value.scan(item).length
     dic_of_value[item] += appeared_time if appeared_time>0

  end

  dic_of_value
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 puts sub_string("Howdy partner, sit down! How's it going?", dictionary)
