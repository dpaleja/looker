view: capacity_calculations {
  sql_table_name: dbo.CapacityCalculations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: formula_name {
    type: string
    sql: ${TABLE}.FormulaName ;;
  }

  dimension: formula_value {
    type: string
    sql: ${TABLE}.FormulaValue ;;
  }

  measure: count {
    type: count
    drill_fields: [id, formula_name, assets.count]
  }
}
