# encoding: utf-8

require 'helper'

class Nanoc::RedCloth::FilterTest < Minitest::Test

  def test_filter
    # Get filter
    filter = ::Nanoc::RedCloth::Filter.new

    # Run filter
    result = filter.run("h1. Foo")
    assert_equal("<h1>Foo</h1>", result)
  end

  def test_filter_with_options
    # Get filter
    filter = ::Nanoc::RedCloth::Filter.new

    # Run filter without options
    result = filter.run("I am a member of SPECTRE.")
    assert_equal("<p>I am a member of <span class=\"caps\">SPECTRE</span>.</p>", result)

    # Run filter with options
    result = filter.run("I am a member of SPECTRE.", :no_span_caps => true)
    assert_equal("<p>I am a member of SPECTRE.</p>", result)
  end

end
