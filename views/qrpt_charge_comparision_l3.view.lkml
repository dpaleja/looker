view: qrpt_charge_comparision_l3 {
  sql_table_name: dbo.qrptChargeComparision_L3 ;;

  dimension: class_id {
    type: number
    sql: ${TABLE}.ClassID ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.ClassName ;;
  }

  dimension: cuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CUID ;;
  }

  dimension: max_ofstr_unit_type {
    type: string
    sql: ${TABLE}.MaxOfstrUnitType ;;
  }

  dimension: rate_spec {
    type: number
    sql: ${TABLE}.RateSpec ;;
  }

  dimension: sng_total {
    type: number
    sql: ${TABLE}.sngTotal ;;
  }

  dimension: str_cu {
    type: string
    sql: ${TABLE}.strCU ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: sum_of_unit_count {
    type: number
    sql: ${TABLE}.SumOfUnitCount ;;
  }

  dimension: year10_forecast_charge {
    type: number
    sql: ${TABLE}.Year10ForecastCharge ;;
  }

  dimension: year1_forecast_charge {
    type: number
    sql: ${TABLE}.Year1ForecastCharge ;;
  }

  dimension: year2_forecast_charge {
    type: number
    sql: ${TABLE}.Year2ForecastCharge ;;
  }

  dimension: year3_forecast_charge {
    type: number
    sql: ${TABLE}.Year3ForecastCharge ;;
  }

  dimension: year4_forecast_charge {
    type: number
    sql: ${TABLE}.Year4ForecastCharge ;;
  }

  dimension: year5_forecast_charge {
    type: number
    sql: ${TABLE}.Year5ForecastCharge ;;
  }

  dimension: year6_forecast_charge {
    type: number
    sql: ${TABLE}.Year6ForecastCharge ;;
  }

  dimension: year7_forecast_charge {
    type: number
    sql: ${TABLE}.Year7ForecastCharge ;;
  }

  dimension: year8_forecast_charge {
    type: number
    sql: ${TABLE}.Year8ForecastCharge ;;
  }

  dimension: year9_forecast_charge {
    type: number
    sql: ${TABLE}.Year9ForecastCharge ;;
  }

  measure: count {
    type: count
    drill_fields: [class_name, str_service_name]
  }
}
