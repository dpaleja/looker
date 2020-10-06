view: qrpt_customer_service_summary_output_incl_cc {
  sql_table_name: dbo.qrptCustomerServiceSummaryOutputInclCC ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: dbl_bgross_cost {
    type: number
    sql: ${TABLE}.dblBGrossCost ;;
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

  dimension: dbl_spec_recov_total {
    type: number
    sql: ${TABLE}.dblSpecRecovTotal ;;
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

  dimension: sng_annual_amount {
    type: number
    sql: ${TABLE}.sngAnnualAmount ;;
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

  dimension: sum_ofsng_month10_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth10Amount ;;
  }

  dimension: sum_ofsng_month11_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth11Amount ;;
  }

  dimension: sum_ofsng_month12_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth12Amount ;;
  }

  dimension: sum_ofsng_month1_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth1Amount ;;
  }

  dimension: sum_ofsng_month2_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth2Amount ;;
  }

  dimension: sum_ofsng_month3_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth3Amount ;;
  }

  dimension: sum_ofsng_month4_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth4Amount ;;
  }

  dimension: sum_ofsng_month5_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth5Amount ;;
  }

  dimension: sum_ofsng_month6_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth6Amount ;;
  }

  dimension: sum_ofsng_month7_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth7Amount ;;
  }

  dimension: sum_ofsng_month8_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth8Amount ;;
  }

  dimension: sum_ofsng_month9_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth9Amount ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
