module RedmineRate
  module Hooks
    class PluginTimesheetModelTimesheetTimeEntryToCSVHook < Redmine::Hook::ViewListener
      include TimesheetHookHelper
      def plugin_timesheet_model_timesheet_time_entry_to_csv(context={})
        context[:csv_data].push( cost_item(context[:time_entry]) )
      end
    end
  end
end
