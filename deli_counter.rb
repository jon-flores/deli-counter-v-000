katz_deli = []

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    counter = 0
    line_order = []
    while katz_deli.count > counter
      place = counter + 1
      order = "#{place}. #{katz_deli[counter]}"
      line_order << order
      counter += 1
    end
    puts "The line is currently: #{line_order.join(' ')}"
  end
end

def take_a_number(katz_deli, last_person)
  katz_deli.insert(-1, last_person)
  puts "Welcome, #{last_person}. You are number #{katz_deli.count} in line."
end

def now_serving(customer)
  if customer.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customer.first}."
    customer.shift
  end
end
