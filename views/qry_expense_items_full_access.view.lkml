view: qry_expense_items_full_access {
  sql_table_name: dbo.qryExpenseItemsFullAccess ;;

  dimension: str_expense_item_code {
    type: number
    sql: ${TABLE}.strExpenseItemCode ;;
  }

  dimension: str_user_name {
    type: string
    sql: ${TABLE}.strUserName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_user_name]
  }
}
