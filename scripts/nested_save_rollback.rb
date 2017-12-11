puts "User count before: #{User.count}"

User.transaction do
  User.create(name: 'Kotori')
  User.create(name: "someone", rollback: true)
end

puts "User count after: #{User.count}"
