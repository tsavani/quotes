# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Quotes.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1', :row_sep => :auto, :col_sep => ";")
csv.each do |row|
  t = Quote.new
  t.quote = row['QUOTE']
  t.author = row['AUTHOR']
  t.save
  putc "."
end

puts "There are now #{Quote.count} rows in the quote table"
