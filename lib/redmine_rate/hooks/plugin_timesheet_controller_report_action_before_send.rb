module RedmineRate
  module Hooks
    class PluginTimesheetControllerReportActionBeforeSend < Redmine::Hook::ViewListener
      include TimesheetHookHelper
      
      def plugin_timesheet_controller_report_action_before_send(context={})
        totalCost = { }
        timesheet = context[:timesheet]
        unless timesheet.sort == :issue
          timesheet.time_entries.each do |project,logs|
            totalCost[project] = 0
            if logs[:logs]
              logs[:logs].each do |log|
                totalCost[project] += cost_item(log)
              end
            end
          end
        end
        totalCost
      end
    end
  end
end
#        else
#          @timesheet.time_entries.each do |project, project_data|
 #           @totalCost[project] = 0
 #           if project_data[:issues]
 #             project_data[:issues].each do |issue, issue_data|
 #               @totalCost[project] += issue_data.collect(&:hours).sum
 #             end
 #           end
 #         end
 #       end

        #cost = cost_item(context[:time_entry])
        #if cost
        #  cost
        #else
        #  0
        #end