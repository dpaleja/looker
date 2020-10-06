view: dashboard_setting_location {
  sql_table_name: dbo.DashboardSettingLocation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: column_index {
    type: number
    sql: ${TABLE}.ColumnIndex ;;
  }

  dimension: layout_type {
    type: number
    sql: ${TABLE}.LayoutType ;;
  }

  dimension: module_id {
    type: string
    sql: ${TABLE}.ModuleId ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.ParentId ;;
  }

  dimension: row_index {
    type: number
    sql: ${TABLE}.RowIndex ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
