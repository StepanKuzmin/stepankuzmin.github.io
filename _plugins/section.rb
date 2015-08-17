module Jekyll
  class SectionBlock < Liquid::Block
    require 'kramdown'

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      content = Kramdown::Document.new(super).to_html
      "<section>#{content}</section>"
    end

  end
end

Liquid::Template.register_tag('section', Jekyll::SectionBlock)