# Corbin Via: DBC Week 8.5 Assignment: Combining SQL and Ruby

# Use SQLite3 to store data
require 'sqlite3'

puts "Welcome to Grocery List Maker.\n Please enter a name for your data:"
user_input = gets.chomp
db = SQLite3::Database.new("#{user_input}.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    amount INT
  )
SQL

db.execute(create_table_cmd)

def create_entry(db, item, amount)
   db.execute("INSERT INTO list (item, amount) VALUES (?, ?)", [item, amount])
 end


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