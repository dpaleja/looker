view: qry_fte {
  sql_table_name: dbo.qryFTE ;;

  dimension: fte {
    type: number
    sql: ${TABLE}.FTE ;;
  }

  dimension: other {
    type: number
    sql: ${TABLE}.Other ;;
  }

  dimension: str_expense_item_code {
    type: number
    sql: ${TABLE}.strExpenseItemCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
