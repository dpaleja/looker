view: forecast {
  sql_table_name: dbo.Forecast ;;

  dimension: service_name {
    type: string
    sql: ${TABLE}."Service Name" ;;
  }

  dimension: unit {
    type: number
    sql: ${TABLE}.Unit ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [service_name]
  }
}
