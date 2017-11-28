puts "User count before: #{User.count}"

User.transaction do
  User.create(name: 'Kotori')
  User.transaction(requires_new: true) do
    User.create(name: 'Nemu')
    raise ActiveRecord::Rollback
  end
end

puts "User count after: #{User.count}"
