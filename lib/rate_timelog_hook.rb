class RateTimelogHook < Redmine::Hook::ViewListener
	#render_on :view_timelog_edit_form_bottom, :partial => "time_entries/time_entry"
	
	
# 	def view_timelog_edit_form_bottom(context={ })
#       # the controller parameter is part of the current params object
#       # This will render the partial into a string and return it.
#       context[:controller].send(:render_to_string, {
#         :partial => "time_entries/time_entry",
#         :locals => context
#       })
# 
#       # Instead of the above statement, you could return any string generated
#       # by your code. That string will be included into the view
#     end
end