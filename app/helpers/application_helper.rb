module ApplicationHelper

  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes['style'] = 'display: none'
    end
    content_tag('div', attributes, &block)
  end

  def md(text)
    if text
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
      markdown.render(text).html_safe
    end
  end

end
