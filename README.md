Deranged
========

A natural language range parser with ActiveModel helpers.

Installation
------------

Just add `gem 'deranged'` to your `Gemfile` and `bundle install` it.

Usage
-----

```ruby
Deranged.parse('2010-2016') #=> 2010..2016
Deranged.parse('1,000,000 to 1,000,000,000 dollars') #=> 1000000..1000000000
Deranged::Parser.new('between .42 and 42').to_range #=> 0.42..42.0
Deranged.format(1..10) #=> "1-10"
Deranged::Formatter.new(3..33.3333333).to_s #=> "3-33.3333333"

class JobOpportunity
  include Deranged::Attrs
  attr_accessor :salary_range
  derange :salary_range
end

job = JobOpportunity.new
job.salary_range_string = '$75,000 - $85,000'
job.salary_range #=> 75000..85000
job.salary_range_string #=> "75000-85000"
```

TODO:
-----

- Tests
- Custom formatting
