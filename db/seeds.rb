# db/seeds.rb

10.times do |i|
    Sample.create!(title: "Sample Title #{i + 1}")
end