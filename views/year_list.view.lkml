view: year_list {
  sql_table_name: dbo.YearList ;;

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
