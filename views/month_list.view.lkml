view: month_list {
  sql_table_name: dbo.MonthList ;;

  dimension: mon {
    type: number
    sql: ${TABLE}.Mon ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
