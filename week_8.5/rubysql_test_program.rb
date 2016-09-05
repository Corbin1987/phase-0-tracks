# Corbin Via: DBC Week 8.5 Assignment: Combining SQL and Ruby

# BUSINESS LOGIC

# Use SQLite3 to store data
require 'sqlite3'

# Method to create an entry in table
def create_entry(db, item, amount)
   db.execute("INSERT INTO list (item, amount) VALUES (?, ?)", [item, amount])
end

# Create table method
# Table called list will be created with values of item and amount
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    amount INT
  )
SQL

# USER INTERFACE

# Greeting message
puts "Welcome to Grocery List Maker.\nPlease enter a name for your data:"
# Collect user input
user_input = gets.chomp
# User input is stored as new database name
db = SQLite3::Database.new("#{user_input}.db")
# Database results are stored as a hash
db.results_as_hash = true
# Create table method is called by execute method
db.execute(create_table_cmd)
# Ask user for amount of items
puts "How many items would you like to enter into this list?"
# Collect user input
amount_of_items = gets.chomp.to_i
# Declare count variable
count = 0
# Use while loop set to less than user input of amount of items
while count < amount_of_items
	# Ask user for item
	puts "Please enter an item."
	# Collect user input
	user_item = gets.chomp
	# Ask user for amount
	puts "Please enter an amount."
	# Collect user input
	user_amount = gets.chomp.to_i
	# Use create entry method with variables of db and user inputs
	create_entry(db, user_item, user_amount)
	# Increase counter and repeat loop
	count += 1
end

puts "Would you like to update an item or delete an item from this list?"
user_update = gets.chomp