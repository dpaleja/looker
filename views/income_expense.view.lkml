view: income_expense {
  sql_table_name: dbo.IncomeExpense ;;

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
