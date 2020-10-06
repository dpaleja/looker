view: summary_charts {
  sql_table_name: dbo.SummaryCharts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: format_id {
    type: number
    sql: ${TABLE}.FormatID ;;
  }

  dimension: own_id {
    type: string
    sql: ${TABLE}.OwnID ;;
  }

  dimension: position_id {
    type: number
    sql: ${TABLE}.PositionID ;;
  }

  dimension: report_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReportID ;;
  }

  dimension: report_style_id {
    type: number
    sql: ${TABLE}.ReportStyleID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      report.report_id,
      report.report_object_name,
      report.report_file_name,
      report.group_name,
      report.classification_name,
      report.object_name
    ]
  }
}
