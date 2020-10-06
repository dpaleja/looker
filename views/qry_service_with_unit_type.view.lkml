view: qry_service_with_unit_type {
  sql_table_name: dbo.qryServiceWithUnitType ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: days_per_year {
    type: number
    sql: ${TABLE}.DaysPerYear ;;
  }

  dimension: dbl_rate_calc {
    type: number
    sql: ${TABLE}.dblRateCalc ;;
  }

  dimension: dbl_rate_spec {
    type: number
    sql: ${TABLE}.dblRateSpec ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: f_calc_type {
    type: string
    sql: ${TABLE}.fCalcType ;;
  }

  dimension: f_is_asset_calculated {
    type: string
    sql: ${TABLE}.fIsAssetCalculated ;;
  }

  dimension: hours_per_year {
    type: number
    sql: ${TABLE}.HoursPerYear ;;
  }

  dimension: int_monthly_calculation_type {
    type: number
    sql: ${TABLE}.intMonthlyCalculationType ;;
  }

  dimension: int_sccalculation_type {
    type: number
    sql: ${TABLE}.intSCCalculationType ;;
  }

  dimension: int_service_type {
    type: number
    sql: ${TABLE}.intServiceType ;;
  }

  dimension: is_time {
    type: string
    sql: ${TABLE}.IsTime ;;
  }

  dimension: lng_classification_id {
    type: number
    sql: ${TABLE}.lngClassificationID ;;
  }

  dimension: lng_classification_id2 {
    type: number
    sql: ${TABLE}.lngClassificationID2 ;;
  }

  dimension: lng_gross_adj {
    type: number
    sql: ${TABLE}.lngGrossAdj ;;
  }

  dimension: lng_net_adj {
    type: number
    sql: ${TABLE}.lngNetAdj ;;
  }

  dimension: lng_net_adj_fact {
    type: number
    sql: ${TABLE}.lngNetAdjFact ;;
  }

  dimension: lng_usage_set_id {
    type: number
    sql: ${TABLE}.lngUsageSetID ;;
  }

  dimension: lng_volume_calc {
    type: number
    sql: ${TABLE}.lngVolumeCalc ;;
  }

  dimension: lng_volume_spec {
    type: number
    sql: ${TABLE}.lngVolumeSpec ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_classification2 {
    type: string
    sql: ${TABLE}.strClassification2 ;;
  }

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_description {
    type: string
    sql: ${TABLE}.strDescription ;;
  }

  dimension: str_gross_adj_reason {
    type: string
    sql: ${TABLE}.strGrossAdjReason ;;
  }

  dimension: str_net_adj_fact_reason {
    type: string
    sql: ${TABLE}.strNetAdjFactReason ;;
  }

  dimension: str_net_adj_reason {
    type: string
    sql: ${TABLE}.strNetAdjReason ;;
  }

  dimension: str_rate_unit {
    type: string
    sql: ${TABLE}.strRateUnit ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_sort_key {
    type: string
    sql: ${TABLE}.strSortKey ;;
  }

  dimension: str_unit_type {
    type: string
    sql: ${TABLE}.strUnitType ;;
  }

  dimension: str_vol_unit {
    type: string
    sql: ${TABLE}.strVolUnit ;;
  }

  dimension: time_type {
    type: number
    sql: ${TABLE}.TimeType ;;
  }

  dimension: use_default_time {
    type: string
    sql: ${TABLE}.UseDefaultTime ;;
  }

  dimension: ysn_locked {
    type: string
    sql: ${TABLE}.ysnLocked ;;
  }

  dimension: ysn_overhead {
    type: string
    sql: ${TABLE}.ysnOverhead ;;
  }

  measure: count {
    type: count
    drill_fields: [id, str_service_name, name]
  }
}
