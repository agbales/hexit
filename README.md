# Hexit

Hexit provides methods to covert text into a color array or a color array into text.

###Getting Started

```
gem install hexit
```
Initialize an instance of Hexit with a string and/or an array.

```
Hexit.new(text, color_array)
```

Methods available to manipulate the text and colors:

*For Text:*
.text_to_colors
.words_to_colors

*For Color Arrays:*
.colors_to_text

###Examples:

*.text_to_colors*

```ruby
hexit = Hexit.new("A simple test.")
hexit.text_to_colors => ["#417369", "#6d706c", "#657465", "#73742e"]
```
*.colors_to_text*

```ruby
hexit = Hexit.new("", ["#417369", "#6d706c", "#657465", "#73742e"])
hexit.colors_totext => "Asimpletest."
```
*.words_to_colors*

```ruby
hexit = Hexit.new("A simple test.")
hexit.words_to_colors => ["#65FFFF", "#115105", "#116101"]
```
