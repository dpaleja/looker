view: export {
  sql_table_name: dbo.Export ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: data_type {
    type: number
    sql: ${TABLE}.DataType ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: export_constant {
    type: string
    sql: ${TABLE}.ExportConstant ;;
  }

  dimension: export_recordset {
    type: string
    sql: ${TABLE}.ExportRecordset ;;
  }

  dimension: export_sql {
    type: string
    sql: ${TABLE}.ExportSQL ;;
  }

  dimension: has_custom_labels {
    type: string
    sql: ${TABLE}.HasCustomLabels ;;
  }

  dimension: header_fields {
    type: string
    sql: ${TABLE}.HeaderFields ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: show_in_export_menu {
    type: string
    sql: ${TABLE}.ShowInExportMenu ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, report.count]
  }
}
