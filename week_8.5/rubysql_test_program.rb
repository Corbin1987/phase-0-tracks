# Corbin Via: DBC Week 8.5 Assignment: Combining SQL and Ruby

# Use SQLite3 to store data
require 'sqlite3'

def create_entry(db, item, amount)
  db.execute("INSERT INTO db (item, amount) VALUES (?, ?)", [item, amount])
end

puts "Welcome to Grocery List Maker."
puts "Please enter a store name."
db = gets.chomp
db = SQLite3::Database.new(" #{db}.db ")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS db(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    amount INT
  )
SQL

db.execute(create_table_cmd)

puts "How many items would you like to enter into this list?"
amount_of_items = gets.to_i

count = 0
while count < amount_of_items
	puts "Please enter an item."
	user_item = gets.chomp
	puts "Please enter an amount."
	user_amount = gets.chomp.to_i
	create_entry(db, user_item, user_amount)
	count += 1
end