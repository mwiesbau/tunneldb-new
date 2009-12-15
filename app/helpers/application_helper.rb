# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
def javascript(*files)
  content_for(:head) { javascript_include_tag(*files) }
end

def stylesheet(*files)
  content_for(:head) { stylesheet_link_tag(*files) }
end

def alternate(str1 = "odd", str2 = "even")
   @alternate_odd_even_state = true if @alternate_odd_even_state.nil?
   @alternate_odd_even_state = !@alternate_odd_even_state
   @alternate_odd_even_state ? str2 : str1
end


end
