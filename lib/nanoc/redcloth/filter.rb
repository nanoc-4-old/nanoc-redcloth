# encoding: utf-8

require 'redcloth'

module Nanoc::RedCloth

  class Filter < Nanoc::Filter

    identifier :redcloth

    def run(content, params={})
      # Create formatter
      r = ::RedCloth.new(content)

      # Set options
      r.filter_classes = params[:filter_classes] if params.has_key?(:filter_classes)
      r.filter_html    = params[:filter_html]    if params.has_key?(:filter_html)
      r.filter_ids     = params[:filter_ids]     if params.has_key?(:filter_ids)
      r.filter_styles  = params[:filter_styles]  if params.has_key?(:filter_styles)
      r.hard_breaks    = params[:hard_breaks]    if params.has_key?(:hard_breaks)
      r.lite_mode      = params[:lite_mode]      if params.has_key?(:lite_mode)
      r.no_span_caps   = params[:no_span_caps]   if params.has_key?(:no_span_caps)
      r.sanitize_html  = params[:sanitize_html]  if params.has_key?(:sanitize_html)

      # Get result
      r.to_html
    end

  end

end
