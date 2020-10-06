view: v_customer_service_monthly_charge {
  sql_table_name: dbo.vCustomerServiceMonthlyCharge ;;

  dimension: bcharges {
    type: number
    sql: ${TABLE}.BCharges ;;
  }

  dimension: btotal_charge {
    type: number
    sql: ${TABLE}.BTotalCharge ;;
  }

  dimension: customer_service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerServiceID ;;
  }

  dimension: month10_charge {
    type: number
    sql: ${TABLE}.Month10Charge ;;
  }

  dimension: month11_charge {
    type: number
    sql: ${TABLE}.Month11Charge ;;
  }

  dimension: month12_charge {
    type: number
    sql: ${TABLE}.Month12Charge ;;
  }

  dimension: month1_charge {
    type: number
    sql: ${TABLE}.Month1Charge ;;
  }

  dimension: month2_charge {
    type: number
    sql: ${TABLE}.Month2Charge ;;
  }

  dimension: month3_charge {
    type: number
    sql: ${TABLE}.Month3Charge ;;
  }

  dimension: month4_charge {
    type: number
    sql: ${TABLE}.Month4Charge ;;
  }

  dimension: month5_charge {
    type: number
    sql: ${TABLE}.Month5Charge ;;
  }

  dimension: month6_charge {
    type: number
    sql: ${TABLE}.Month6Charge ;;
  }

  dimension: month7_charge {
    type: number
    sql: ${TABLE}.Month7Charge ;;
  }

  dimension: month8_charge {
    type: number
    sql: ${TABLE}.Month8Charge ;;
  }

  dimension: month9_charge {
    type: number
    sql: ${TABLE}.Month9Charge ;;
  }

  dimension: total_charge {
    type: number
    sql: ${TABLE}.TotalCharge ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_services.id, customer_services.name]
  }
}
