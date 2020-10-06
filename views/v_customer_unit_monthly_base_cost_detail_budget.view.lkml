view: v_customer_unit_monthly_base_cost_detail_budget {
  sql_table_name: dbo.vCustomerUnitMonthlyBaseCostDetailBudget ;;

  dimension: base_cost {
    type: number
    sql: ${TABLE}.BaseCost ;;
  }

  dimension: bmonth10_cost {
    type: number
    sql: ${TABLE}.BMonth10Cost ;;
  }

  dimension: bmonth11_cost {
    type: number
    sql: ${TABLE}.BMonth11Cost ;;
  }

  dimension: bmonth12_cost {
    type: number
    sql: ${TABLE}.BMonth12Cost ;;
  }

  dimension: bmonth1_cost {
    type: number
    sql: ${TABLE}.BMonth1Cost ;;
  }

  dimension: bmonth2_cost {
    type: number
    sql: ${TABLE}.BMonth2Cost ;;
  }

  dimension: bmonth3_cost {
    type: number
    sql: ${TABLE}.BMonth3Cost ;;
  }

  dimension: bmonth4_cost {
    type: number
    sql: ${TABLE}.BMonth4Cost ;;
  }

  dimension: bmonth5_cost {
    type: number
    sql: ${TABLE}.BMonth5Cost ;;
  }

  dimension: bmonth6_cost {
    type: number
    sql: ${TABLE}.BMonth6Cost ;;
  }

  dimension: bmonth7_cost {
    type: number
    sql: ${TABLE}.BMonth7Cost ;;
  }

  dimension: bmonth8_cost {
    type: number
    sql: ${TABLE}.BMonth8Cost ;;
  }

  dimension: bmonth9_cost {
    type: number
    sql: ${TABLE}.BMonth9Cost ;;
  }

  dimension: bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BSID ;;
  }

  dimension: csid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSID ;;
  }

  dimension: cuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CUID ;;
  }

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
  }

  dimension: scid {
    type: string
    sql: ${TABLE}.SCID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
