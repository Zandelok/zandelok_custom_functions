# Zandelok_custom_functions

## Description

This gem will help you extend the functionality of some standard Ruby classes. It also provides some custom methods.

## Array

### `count_elements` count elements in Array and return hash: `element => count`
```ruby
[1, 1, 1, 1, 1, 2, 2, 3, 4].count_elements # will return {1=>5, 2=>2, 3=>1, 4=>1}
```

### `increase_with_index` increase each element with its index
```ruby
[1, 2, 3, 4].increase_with_index # will return [1, 3, 5, 7]
```

### `increase_with_position` increase each element with its position
```ruby
[1, 2, 3, 4].increase_with_position # will return [2, 4, 6, 8]
```

### `select_solo` select all elements that are not repeated in the array
```ruby
[1, 1, 2, 2, 2, 2, 2, 2, 3, 4].select_solo # will return [3, 4]
```

### `split_by_parity` divide all elements into even and odd elements
```ruby
[1, 1, 2, 2, 2, 2, 2, 2, 3, 4].split_by_parity # will return [[2, 2, 2, 2, 2, 2, 4], [1, 1, 3]]
```

## String

### `camelcase` convert dash/underscore delimited words into camel casing. The first word within the output capitalized only if the original word was capitalized
```ruby
'the-stealth_warrior'.camelcase # will return 'theStealthWarrior'
```

### `count_chars` count chars in String and return hash: `element => count`
```ruby
'Hello world'.count_chars # will return {"H"=>1, "e"=>1, "l"=>3, "o"=>2, " "=>1, "w"=>1, "r"=>1, "d"=>1}
```

### `palindrome?` check if a given string (case insensitive) is a palindrome
```ruby
'Hello'.palindrome? # will return false

'loL'.palindrome? # will return true
```

## Custom methods

### `multiply` multiply all values (accept only integers)
```ruby
Zandelok::Functions.multiply(1, 2, 3, 4) # will return 24
```

### `missing_numbers` return an array with missing numbers between min and max values (accept only array)
```ruby
Zandelok::Functions.missing_numbers([1, 2, 3, 10]) # will return [4, 5, 6, 7, 8, 9]
```

### `missing_numbers` generate hashtag from array or string
```ruby
Zandelok::Functions.generate_hashtag([1, 2, 3, 10]) # will return '#12310'

Zandelok::Functions.generate_hashtag('Hello world with ruby') # will return '#HelloWorldWithRuby'
```