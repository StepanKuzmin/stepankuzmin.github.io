module Jekyll
  class SidenoteBlock < Liquid::Tag
    require 'shellwords'

    def initialize(tag_name, markup, parse_context)
      super
      @id, @text = markup.shellsplit
    end

    def render(context)
      "<label for='sn-#{@id}' class='margin-toggle sidenote-number'></label>
      <input type='checkbox' id='sn-#{@id}' class='margin-toggle'>
      <span class='sidenote'>#{@text}</span>"
    end

  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteBlock)