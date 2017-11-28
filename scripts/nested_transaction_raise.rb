puts "User count before: #{User.count}"

begin
  User.transaction do
    User.create(name: 'Kotori')
    User.transaction do
      User.create(name: 'Nemu')
      raise "Some runtime error!"
    end
  end
rescue => e
  puts "Rescued exception #{e}"
end

puts "User count after: #{User.count}"
