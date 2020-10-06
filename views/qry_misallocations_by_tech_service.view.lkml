view: qry_misallocations_by_tech_service {
  sql_table_name: dbo.qryMisallocationsByTechService ;;

  dimension: int_error_code {
    type: number
    sql: ${TABLE}.intErrorCode ;;
  }

  dimension: str_expense_item_code {
    type: number
    sql: ${TABLE}.strExpenseItemCode ;;
  }

  dimension: sum_ofsng_allocation_percentage1 {
    type: number
    sql: ${TABLE}.SumOfsngAllocationPercentage1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
