view: qry_expense_item_output_sapcapex {
  sql_table_name: dbo.qryExpenseItemOutputSAPCapex ;;

  dimension: sng_month1 {
    type: number
    sql: ${TABLE}.sngMonth1 ;;
  }

  dimension: sng_month10 {
    type: number
    sql: ${TABLE}.sngMonth10 ;;
  }

  dimension: sng_month11 {
    type: number
    sql: ${TABLE}.sngMonth11 ;;
  }

  dimension: sng_month12 {
    type: number
    sql: ${TABLE}.sngMonth12 ;;
  }

  dimension: sng_month2 {
    type: number
    sql: ${TABLE}.sngMonth2 ;;
  }

  dimension: sng_month3 {
    type: number
    sql: ${TABLE}.sngMonth3 ;;
  }

  dimension: sng_month4 {
    type: number
    sql: ${TABLE}.sngMonth4 ;;
  }

  dimension: sng_month5 {
    type: number
    sql: ${TABLE}.sngMonth5 ;;
  }

  dimension: sng_month6 {
    type: number
    sql: ${TABLE}.sngMonth6 ;;
  }

  dimension: sng_month7 {
    type: number
    sql: ${TABLE}.sngMonth7 ;;
  }

  dimension: sng_month8 {
    type: number
    sql: ${TABLE}.sngMonth8 ;;
  }

  dimension: sng_month9 {
    type: number
    sql: ${TABLE}.sngMonth9 ;;
  }

  dimension: sng_total {
    type: number
    sql: ${TABLE}.sngTotal ;;
  }

  dimension: str_account_code {
    type: string
    sql: ${TABLE}.strAccountCode ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  dimension: str_plan_num {
    type: number
    sql: ${TABLE}.strPlanNum ;;
  }

  dimension: str_year {
    type: string
    sql: ${TABLE}.strYear ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
