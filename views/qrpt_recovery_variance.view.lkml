view: qrpt_recovery_variance {
  sql_table_name: dbo.qrptRecoveryVariance ;;

  dimension: annual_allocated_unit {
    type: number
    sql: ${TABLE}."Annual Allocated Unit" ;;
  }

  dimension: annual_budgeted_charge {
    type: number
    sql: ${TABLE}."Annual Budgeted Charge" ;;
  }

  dimension: annual_budgeted_rate {
    type: number
    sql: ${TABLE}."Annual Budgeted Rate" ;;
  }

  dimension: annual_budgeted_unit {
    type: number
    sql: ${TABLE}."Annual Budgeted Unit" ;;
  }

  dimension: annual_calculated_charge {
    type: number
    sql: ${TABLE}."Annual Calculated Charge" ;;
  }

  dimension: annual_calculated_rate {
    type: number
    sql: ${TABLE}."Annual Calculated Rate" ;;
  }

  dimension: annual_current_charge {
    type: number
    sql: ${TABLE}."Annual Current Charge" ;;
  }

  dimension: annual_specified_rate {
    type: number
    sql: ${TABLE}."Annual Specified Rate" ;;
  }

  dimension: business_service {
    type: string
    sql: ${TABLE}."Business Service" ;;
  }

  dimension: customer_unit {
    type: string
    sql: ${TABLE}."Customer Unit" ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}."Unit Type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
