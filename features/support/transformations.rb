NUMBERS = {
    'first' => 1,
    'second' => 2,
    'third' => 3,
    'fourth' => 4,
    'fifth' => 5
}.freeze

Transform /^the puppy in the (.*) place$/ do |puppy_ordinal|
    NUMBERS[puppy_ordinal]
end

Transform /^line item (\d+)$/ do |line_string|
  line_string.to_i
end
