module RedmineRate
  module Hooks
    class PluginTimesheetModelTimesheetCSVHeaderHook < Redmine::Hook::ViewListener
      def plugin_timesheet_model_timesheet_csv_header(context={})
        context[:csv_data].push( "Cost" )
      end
    end
  end
end
