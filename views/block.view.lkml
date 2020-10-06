view: block {
  sql_table_name: dbo.Block ;;

  dimension_group: block {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BlockTime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
