view: ittower_ratio {
  sql_table_name: dbo.ITTowerRatio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: actual {
    type: string
    sql: ${TABLE}.Actual ;;
  }

  dimension: budget {
    type: string
    sql: ${TABLE}.Budget ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: unit_symbols {
    type: string
    sql: ${TABLE}.UnitSymbols ;;
  }

  dimension: vriance {
    type: string
    sql: ${TABLE}.Vriance ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
