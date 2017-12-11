puts "User count before: #{User.count}"

user = User.create(name: "someone", rollback: true)

puts "User count after: #{User.count}"
