view: qry_tech_service_allocation_summary {
  sql_table_name: dbo.qryTechServiceAllocationSummary ;;

  dimension: int_allocation_type {
    type: number
    sql: ${TABLE}.intAllocationType ;;
  }

  dimension: sng_allocation_percentage {
    type: number
    sql: ${TABLE}.sngAllocationPercentage ;;
  }

  dimension: sng_month10_amount {
    type: number
    sql: ${TABLE}.sngMonth10Amount ;;
  }

  dimension: sng_month11_amount {
    type: number
    sql: ${TABLE}.sngMonth11Amount ;;
  }

  dimension: sng_month12_amount {
    type: number
    sql: ${TABLE}.sngMonth12Amount ;;
  }

  dimension: sng_month1_amount {
    type: number
    sql: ${TABLE}.sngMonth1Amount ;;
  }

  dimension: sng_month2_amount {
    type: number
    sql: ${TABLE}.sngMonth2Amount ;;
  }

  dimension: sng_month3_amount {
    type: number
    sql: ${TABLE}.sngMonth3Amount ;;
  }

  dimension: sng_month4_amount {
    type: number
    sql: ${TABLE}.sngMonth4Amount ;;
  }

  dimension: sng_month5_amount {
    type: number
    sql: ${TABLE}.sngMonth5Amount ;;
  }

  dimension: sng_month6_amount {
    type: number
    sql: ${TABLE}.sngMonth6Amount ;;
  }

  dimension: sng_month7_amount {
    type: number
    sql: ${TABLE}.sngMonth7Amount ;;
  }

  dimension: sng_month8_amount {
    type: number
    sql: ${TABLE}.sngMonth8Amount ;;
  }

  dimension: sng_month9_amount {
    type: number
    sql: ${TABLE}.sngMonth9Amount ;;
  }

  dimension: str_allocation_code {
    type: number
    sql: ${TABLE}.strAllocationCode ;;
  }

  dimension: str_expense_item {
    type: number
    sql: ${TABLE}.strExpenseItem ;;
  }

  dimension: str_fixed_amount {
    type: number
    sql: ${TABLE}.strFixedAmount ;;
  }

  dimension: str_incoming {
    type: number
    sql: ${TABLE}.strIncoming ;;
  }

  dimension: str_outgoing {
    type: number
    sql: ${TABLE}.strOutgoing ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
