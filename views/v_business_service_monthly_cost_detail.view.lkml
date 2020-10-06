view: v_business_service_monthly_cost_detail {
  sql_table_name: dbo.vBusinessServiceMonthlyCostDetail ;;

  dimension: base_cost {
    type: number
    sql: ${TABLE}.BaseCost ;;
  }

  dimension: bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BSID ;;
  }

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
  }

  dimension: month10_cost {
    type: number
    sql: ${TABLE}.Month10Cost ;;
  }

  dimension: month11_cost {
    type: number
    sql: ${TABLE}.Month11Cost ;;
  }

  dimension: month12_cost {
    type: number
    sql: ${TABLE}.Month12Cost ;;
  }

  dimension: month1_cost {
    type: number
    sql: ${TABLE}.Month1Cost ;;
  }

  dimension: month2_cost {
    type: number
    sql: ${TABLE}.Month2Cost ;;
  }

  dimension: month3_cost {
    type: number
    sql: ${TABLE}.Month3Cost ;;
  }

  dimension: month4_cost {
    type: number
    sql: ${TABLE}.Month4Cost ;;
  }

  dimension: month5_cost {
    type: number
    sql: ${TABLE}.Month5Cost ;;
  }

  dimension: month6_cost {
    type: number
    sql: ${TABLE}.Month6Cost ;;
  }

  dimension: month7_cost {
    type: number
    sql: ${TABLE}.Month7Cost ;;
  }

  dimension: month8_cost {
    type: number
    sql: ${TABLE}.Month8Cost ;;
  }

  dimension: month9_cost {
    type: number
    sql: ${TABLE}.Month9Cost ;;
  }

  dimension: scid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SCID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
