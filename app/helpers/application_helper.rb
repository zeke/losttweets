module ApplicationHelper
  
  def stylesheets
    screen = %w(compiled/screen)
    print = %w(compiled/print.css)
    out = []
		screen.each do |stylesheet|
    	out << stylesheet_link_tag(stylesheet)
		end
    out << stylesheet_link_tag(print, :media => 'print')
    out << "<!--[if lt IE 8]>" + stylesheet_link_tag('compiled/ie') + "<![endif]-->"
    out.join("\n")
  end

end
