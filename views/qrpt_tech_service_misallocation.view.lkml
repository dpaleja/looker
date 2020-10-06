view: qrpt_tech_service_misallocation {
  sql_table_name: dbo.qrptTechServiceMisallocation ;;

  dimension: sng_allocation {
    type: number
    sql: ${TABLE}.sngAllocation ;;
  }

  dimension: str_account_code_name {
    type: string
    sql: ${TABLE}.strAccountCodeName ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: str_error_message {
    type: string
    sql: ${TABLE}.strErrorMessage ;;
  }

  dimension: str_expense_item_description {
    type: string
    sql: ${TABLE}.strExpenseItemDescription ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name, str_account_code_name]
  }
}
