module Jekyll
  class FooterTag < Liquid::Tag
    require 'shellwords'

    def initialize(tag_name, markup, parse_context)
      super
      @text = markup
    end

    def render(context)
      "<footer>#{@text}</footer>"
    end

  end
end

Liquid::Template.register_tag('footer', Jekyll::FooterTag)