view: v_customer_service_monthly_cost_with_no_expense {
  sql_table_name: dbo.vCustomerServiceMonthlyCostWithNoExpense ;;

  dimension: base_cost {
    type: number
    sql: ${TABLE}.BaseCost ;;
  }

  dimension: customer_service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerServiceID ;;
  }

  dimension: gross_cost {
    type: number
    sql: ${TABLE}.GrossCost ;;
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

  measure: count {
    type: count
    drill_fields: [customer_services.id, customer_services.name]
  }
}
