view: v_customer_unit_charge {
  sql_table_name: dbo.vCustomerUnitCharge ;;

  dimension: bmonth_charge1 {
    type: number
    sql: ${TABLE}.BMonthCharge1 ;;
  }

  dimension: bmonth_charge10 {
    type: number
    sql: ${TABLE}.BMonthCharge10 ;;
  }

  dimension: bmonth_charge11 {
    type: number
    sql: ${TABLE}.BMonthCharge11 ;;
  }

  dimension: bmonth_charge12 {
    type: number
    sql: ${TABLE}.BMonthCharge12 ;;
  }

  dimension: bmonth_charge2 {
    type: number
    sql: ${TABLE}.BMonthCharge2 ;;
  }

  dimension: bmonth_charge3 {
    type: number
    sql: ${TABLE}.BMonthCharge3 ;;
  }

  dimension: bmonth_charge4 {
    type: number
    sql: ${TABLE}.BMonthCharge4 ;;
  }

  dimension: bmonth_charge5 {
    type: number
    sql: ${TABLE}.BMonthCharge5 ;;
  }

  dimension: bmonth_charge6 {
    type: number
    sql: ${TABLE}.BMonthCharge6 ;;
  }

  dimension: bmonth_charge7 {
    type: number
    sql: ${TABLE}.BMonthCharge7 ;;
  }

  dimension: bmonth_charge8 {
    type: number
    sql: ${TABLE}.BMonthCharge8 ;;
  }

  dimension: bmonth_charge9 {
    type: number
    sql: ${TABLE}.BMonthCharge9 ;;
  }

  dimension: btotal_charges {
    type: number
    sql: ${TABLE}.BTotalCharges ;;
  }

  dimension: csid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSID ;;
  }

  dimension: csname {
    type: string
    sql: ${TABLE}.CSNAME ;;
  }

  dimension: cuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CUID ;;
  }

  dimension: cuname {
    type: string
    sql: ${TABLE}.CUNAME ;;
  }

  dimension: month_charge1 {
    type: number
    sql: ${TABLE}.MonthCharge1 ;;
  }

  dimension: month_charge10 {
    type: number
    sql: ${TABLE}.MonthCharge10 ;;
  }

  dimension: month_charge11 {
    type: number
    sql: ${TABLE}.MonthCharge11 ;;
  }

  dimension: month_charge12 {
    type: number
    sql: ${TABLE}.MonthCharge12 ;;
  }

  dimension: month_charge2 {
    type: number
    sql: ${TABLE}.MonthCharge2 ;;
  }

  dimension: month_charge3 {
    type: number
    sql: ${TABLE}.MonthCharge3 ;;
  }

  dimension: month_charge4 {
    type: number
    sql: ${TABLE}.MonthCharge4 ;;
  }

  dimension: month_charge5 {
    type: number
    sql: ${TABLE}.MonthCharge5 ;;
  }

  dimension: month_charge6 {
    type: number
    sql: ${TABLE}.MonthCharge6 ;;
  }

  dimension: month_charge7 {
    type: number
    sql: ${TABLE}.MonthCharge7 ;;
  }

  dimension: month_charge8 {
    type: number
    sql: ${TABLE}.MonthCharge8 ;;
  }

  dimension: month_charge9 {
    type: number
    sql: ${TABLE}.MonthCharge9 ;;
  }

  dimension: total_charges {
    type: number
    sql: ${TABLE}.TotalCharges ;;
  }

  measure: count {
    type: count
    drill_fields: [cuname, csname]
  }
}
