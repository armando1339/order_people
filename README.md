# OrderPeople

Class that order a hash of people by name or age (just practice).

## local quicly usage

Position yourself in the project folder an init ruby terminal

```
$ cd to_derectory_of_project

# to start ruby terminal
$ irb 

```

then

```ruby
require './order_people'
```

## Usage

```ruby
people_hash = {
  tommy: { name: "Tommy", age: 34 },
  julian: { name: "Julian", age: 28 },
  peter: { name: "Peter", age: 54 },
  justin: { name: "Justin", age: 27 },
  john: { name: "John", age: 20 },
  marck: { name: "Marck", age: 32 },
  peter: { name: "Peter", age: 22 },
  steve: { name: "Steve", age: 38 },
  bryan: { name: "Bryan", age: 24 }
}

people = OrderPeople.new(people_hash)

people.sort_by "name"
people.sort_by "age"
people.sort_alphabetically_by_name
people.sort_by_age

```

## Test

```
# run 
rspec ./order_people_spec.rb
```
