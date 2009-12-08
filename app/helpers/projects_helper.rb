module ProjectsHelper
def alternate(str1 = "odd", str2 = "even")
   @alternate_odd_even_state = true if @alternate_odd_even_state.nil?
   @alternate_odd_even_state = !@alternate_odd_even_state
   @alternate_odd_even_state ? str2 : str1
end




end
