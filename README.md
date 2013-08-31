[![Build Status](https://travis-ci.org/nanoc/nanoc-redcloth.png)](https://travis-ci.org/nanoc/nanoc-redcloth)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-redcloth.png)](https://codeclimate.com/github/nanoc/nanoc-redcloth)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-redcloth/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-redcloth)

# nanoc-redcloth

This provides [RedCloth](http://redcloth.org/) filter for [nanoc](http://nanoc.ws).

## Installation

`gem install nanoc-redcloth`

## Usage

```ruby
filter :redcloth
```

This filter takes the following options:

* `:filter_classes`
* `:filter_html`
* `:filter_ids`
* `:filter_styles`
* `:hard_breaks`
* `:lite_mode`
* `:no_span_caps`
* `:sanitize_html`
