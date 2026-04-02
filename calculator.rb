puts "Welcome to the Calculator!"
puts 'Type "sair" or "exit" to quit.'
puts "\n"

opers = [
  {msg: "Enter the first number: ", val: 0},
  {msg: "Enter the arithmetic operator: ", val: nil},
  {msg: "Enter the second number: ", val: 0}
]

while true
  opers.each do |oper|
    print oper[:msg]
    str = gets.chomp
    return if str.downcase() == "sair" || str.downcase() == "exit"

    oper[:val] = str
  end

  print "Calculating the result: "
  n1 = opers[0][:val].match?(/[.,]/) ? opers[0][:val].sub(",",".").to_f : opers[0][:val].to_i
  n2 = opers[2][:val].match?(/[.,]/) ? opers[2][:val].sub(",",".").to_f : opers[2][:val].to_i
  op = opers[1][:val]

  puts (n1.send(op, n2) rescue "undefined")
end
