# Jekyll::NumberedHeadings

Simple jekyll `pre_render` hook to add ordered number to headings.

## Requirement

It's tested only on jekyll 3.3.1.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-numbered-headings'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-numbered-headings

Then, add to your `_config.yml`:

```yaml
gems:
  - jekyll-numbered-headings
```
## Usage

You can use following syntax on your [pages](https://jekyllrb.com/docs/pages/), [posts](https://jekyllrb.com/docs/posts/), and [collections](https://jekyllrb.com/docs/collections/).

```markdown
##1. At first

###1. One thing

###1. Another thing

##1. Second

##1. Third
```

will be replaced to:

```markdown
## 1. At first

### 1.1. One thing

### 1.2. Another thing

## 2. Second

## 3. Third
```

That's it!

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jekyll-numbered-headings. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

