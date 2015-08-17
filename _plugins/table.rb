module Jekyll
  class TableBlock < Liquid::Block
    require 'kramdown'

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      content = Kramdown::Document.new(super).to_html
      "<div class='table-wrapper'>#{content}</div>"
    end

  end
end

Liquid::Template.register_tag('table', Jekyll::TableBlock)