# Class
# Puppy

# Characteristics
# four legs 
# wagging tail
# paws
# adorable eyes that do not accept "no"
# beautiful puppy smile
# fur or hair

# Behavior
# running 
# tail-wagging
# excited wiggling 
# rolling over
# making unexpected puddles
# fetching
# sitting 
# staying 
# rolling over

# From IRB:

class Puppy
end

Puppy.methods
=> :allocate, :new, :superclass, :freeze, :===, :==, :<=>, :<, :<=, :>, :>=, :to_s, :inspect, :included_modules, 
:include?, :name, :ancestors, :instance_methods, :public_instance_methods, :protected_instance_methods, 
:private_instance_methods, :constants, :const_get, :const_set, :const_defined?, :const_missing, :class_variables, 
:remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, 
:private_constant, :singleton_class?, :include, :prepend, :module_exec, :class_exec, :module_eval, :class_eval, 
:method_defined?, :public_method_defined?, :private_method_defined?, :protected_method_defined?, :public_class_method, 
:private_class_method, :autoload, :autoload?, :instance_method, :public_instance_method, :nil?, :=~, :!~, :eql?, 
:hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, 
:frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, 
:instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, 
:kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, 
:define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

duchess = Puppy.new
=> #<Puppy:0x2ffd480>

fido = Puppy.new
=> #<Puppy:0x2d4fc50>

spot = Puppy.new
=> #<Puppy:0x32645b8>

misterpickles = Puppy.new
=> #<Puppy:0x32ea538>

spot.class
=> Puppy

duchess == fido
=> false

fido.instance_of?(Array)
=> false

fido.instance_of?(Puppy)
=> true

spot.play_dead
# => NoMethodError: undefined method `play_dead' for #<Puppy:0x32645b8>
#        from (irb):13
#        from C:/RailsInstaller/Ruby2.2.0/bin/irb:11:in `<main>'

str = String.new
=> ""

str.length
=> 0

str.empty?
=> true

str += "huh."
=> "huh."

greeting = String.new("hello")
=> "hello"

greeting.length
=> 5

greeting.upcase
=> "HELLO"