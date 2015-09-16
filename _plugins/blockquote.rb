module Jekyll
  class BlockquoteBlock < Liquid::Block
    require 'kramdown'

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      content = Kramdown::Document.new(super).to_html
      "<blockquote>#{content}</blockquote>"
    end

  end
end

Liquid::Template.register_tag('blockquote', Jekyll::BlockquoteBlock)