view: qrpt_customer_service_rate_include_no_gross {
  sql_table_name: dbo.qrptCustomerServiceRateIncludeNoGross ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: class2_group_name {
    type: string
    sql: ${TABLE}.Class2GroupName ;;
  }

  dimension: class_group_name {
    type: string
    sql: ${TABLE}.ClassGroupName ;;
  }

  dimension: dbl_bgross_cost {
    type: number
    sql: ${TABLE}.dblBGrossCost ;;
  }

  dimension: dbl_brate_calc {
    type: number
    sql: ${TABLE}.dblBRateCalc ;;
  }

  dimension: dbl_brate_spec {
    type: number
    sql: ${TABLE}.dblBRateSpec ;;
  }

  dimension: dbl_calc_recov_total {
    type: number
    sql: ${TABLE}.dblCalcRecovTotal ;;
  }

  dimension: dbl_calc_unit_rate {
    type: number
    sql: ${TABLE}.dblCalcUnitRate ;;
  }

  dimension: dbl_rate_spec {
    type: number
    sql: ${TABLE}.dblRateSpec ;;
  }

  dimension: dbl_surplus_amount {
    type: number
    sql: ${TABLE}.dblSurplusAmount ;;
  }

  dimension: lng_bvolume_spec {
    type: number
    sql: ${TABLE}.lngBVolumeSpec ;;
  }

  dimension: lng_volume_spec {
    type: number
    sql: ${TABLE}.lngVolumeSpec ;;
  }

  dimension: per {
    type: number
    sql: ${TABLE}.Per ;;
  }

  dimension: sng_total {
    type: number
    sql: ${TABLE}.sngTotal ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_classification2 {
    type: string
    sql: ${TABLE}.strClassification2 ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_unit_type {
    type: string
    sql: ${TABLE}.strUnitType ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name, class_group_name, class2_group_name]
  }
}
