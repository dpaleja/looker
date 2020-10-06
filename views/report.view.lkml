view: report {
  sql_table_name: dbo.Report ;;
  drill_fields: [report_id]

  dimension: report_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ReportID ;;
  }

  dimension: can_export {
    type: string
    sql: ${TABLE}.CanExport ;;
  }

  dimension: classification_name {
    type: string
    sql: ${TABLE}.ClassificationName ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: export_datasource {
    type: string
    sql: ${TABLE}.ExportDatasource ;;
  }

  dimension: export_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: has_custom_labels {
    type: string
    sql: ${TABLE}.HasCustomLabels ;;
  }

  dimension: has_filter {
    type: string
    sql: ${TABLE}.HasFilter ;;
  }

  dimension: has_totals {
    type: string
    sql: ${TABLE}.HasTotals ;;
  }

  dimension: is_disabled {
    type: string
    sql: ${TABLE}.IsDisabled ;;
  }

  dimension: is_summarised {
    type: string
    sql: ${TABLE}.IsSummarised ;;
  }

  dimension: layout {
    type: number
    sql: ${TABLE}.Layout ;;
  }

  dimension: layout_old {
    type: string
    sql: ${TABLE}.LayoutOld ;;
  }

  dimension: limited_user_access {
    type: number
    sql: ${TABLE}.LimitedUserAccess ;;
  }

  dimension: limited_user_datasource {
    type: string
    sql: ${TABLE}.LimitedUserDatasource ;;
  }

  dimension: menu_grouping_a {
    type: string
    sql: ${TABLE}.MenuGroupingA ;;
  }

  dimension: menu_grouping_b {
    type: string
    sql: ${TABLE}.MenuGroupingB ;;
  }

  dimension: object_is_detail {
    type: string
    sql: ${TABLE}.ObjectIsDetail ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.ObjectName ;;
  }

  dimension: report_constant {
    type: string
    sql: ${TABLE}.ReportConstant ;;
  }

  dimension: report_datasource {
    type: string
    sql: ${TABLE}.ReportDatasource ;;
  }

  dimension: report_file_name {
    type: string
    sql: ${TABLE}.ReportFileName ;;
  }

  dimension: report_object_name {
    type: string
    sql: ${TABLE}.ReportObjectName ;;
  }

  dimension: report_sql {
    type: string
    sql: ${TABLE}.ReportSQL ;;
  }

  dimension: report_title {
    type: string
    sql: ${TABLE}.ReportTitle ;;
  }

  dimension: show_currency_type {
    type: string
    sql: ${TABLE}.ShowCurrencyType ;;
  }

  dimension: show_group {
    type: string
    sql: ${TABLE}.ShowGroup ;;
  }

  dimension: show_months {
    type: string
    sql: ${TABLE}.ShowMonths ;;
  }

  dimension: show_summarise {
    type: string
    sql: ${TABLE}.ShowSummarise ;;
  }

  dimension: summary_type {
    type: number
    sql: ${TABLE}.SummaryType ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      report_id,
      report_object_name,
      report_file_name,
      group_name,
      classification_name,
      object_name,
      export.id,
      export.name,
      frequently_used_exports.count,
      frequently_used_reports.count,
      summary_charts.count
    ]
  }
}
