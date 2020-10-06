view: frequently_used_reports {
  sql_table_name: dbo.FrequentlyUsedReports ;;

  dimension: report_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReportID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id,
      report.report_id,
      report.report_object_name,
      report.report_file_name,
      report.group_name,
      report.classification_name,
      report.object_name
    ]
  }
}
