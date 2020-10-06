view: dashboard_setting_symbol {
  sql_table_name: dbo.DashboardSettingSymbol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: module_id {
    type: string
    sql: ${TABLE}.ModuleId ;;
  }

  dimension: symbol_index {
    type: number
    sql: ${TABLE}.SymbolIndex ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
