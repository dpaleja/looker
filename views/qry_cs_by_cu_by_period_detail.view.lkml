view: qry_cs_by_cu_by_period_detail {
  sql_table_name: dbo.qryCsByCuByPeriodDetail ;;

  dimension: bmonth10_unit_count {
    type: number
    sql: ${TABLE}.BMonth10UnitCount ;;
  }

  dimension: bmonth11_unit_count {
    type: number
    sql: ${TABLE}.BMonth11UnitCount ;;
  }

  dimension: bmonth12_unit_count {
    type: number
    sql: ${TABLE}.BMonth12UnitCount ;;
  }

  dimension: bmonth1_unit_count {
    type: number
    sql: ${TABLE}.BMonth1UnitCount ;;
  }

  dimension: bmonth2_unit_count {
    type: number
    sql: ${TABLE}.BMonth2UnitCount ;;
  }

  dimension: bmonth3_unit_count {
    type: number
    sql: ${TABLE}.BMonth3UnitCount ;;
  }

  dimension: bmonth4_unit_count {
    type: number
    sql: ${TABLE}.BMonth4UnitCount ;;
  }

  dimension: bmonth5_unit_count {
    type: number
    sql: ${TABLE}.BMonth5UnitCount ;;
  }

  dimension: bmonth6_unit_count {
    type: number
    sql: ${TABLE}.BMonth6UnitCount ;;
  }

  dimension: bmonth7_unit_count {
    type: number
    sql: ${TABLE}.BMonth7UnitCount ;;
  }

  dimension: bmonth8_unit_count {
    type: number
    sql: ${TABLE}.BMonth8UnitCount ;;
  }

  dimension: bmonth9_unit_count {
    type: number
    sql: ${TABLE}.BMonth9UnitCount ;;
  }

  dimension: brate_spec {
    type: number
    sql: ${TABLE}.BRateSpec ;;
  }

  dimension: brate_spec1 {
    type: number
    sql: ${TABLE}.BRateSpec1 ;;
  }

  dimension: brate_spec10 {
    type: number
    sql: ${TABLE}.BRateSpec10 ;;
  }

  dimension: brate_spec11 {
    type: number
    sql: ${TABLE}.BRateSpec11 ;;
  }

  dimension: brate_spec12 {
    type: number
    sql: ${TABLE}.BRateSpec12 ;;
  }

  dimension: brate_spec2 {
    type: number
    sql: ${TABLE}.BRateSpec2 ;;
  }

  dimension: brate_spec3 {
    type: number
    sql: ${TABLE}.BRateSpec3 ;;
  }

  dimension: brate_spec4 {
    type: number
    sql: ${TABLE}.BRateSpec4 ;;
  }

  dimension: brate_spec5 {
    type: number
    sql: ${TABLE}.BRateSpec5 ;;
  }

  dimension: brate_spec6 {
    type: number
    sql: ${TABLE}.BRateSpec6 ;;
  }

  dimension: brate_spec7 {
    type: number
    sql: ${TABLE}.BRateSpec7 ;;
  }

  dimension: brate_spec8 {
    type: number
    sql: ${TABLE}.BRateSpec8 ;;
  }

  dimension: brate_spec9 {
    type: number
    sql: ${TABLE}.BRateSpec9 ;;
  }

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

  dimension: int_monthly_calculation_type {
    type: number
    sql: ${TABLE}.intMonthlyCalculationType ;;
  }

  dimension: max_ofstr_unit_type {
    type: string
    sql: ${TABLE}.MaxOfstrUnitType ;;
  }

  dimension: month10_unit_count {
    type: number
    sql: ${TABLE}.Month10UnitCount ;;
  }

  dimension: month11_unit_count {
    type: number
    sql: ${TABLE}.Month11UnitCount ;;
  }

  dimension: month12_unit_count {
    type: number
    sql: ${TABLE}.Month12UnitCount ;;
  }

  dimension: month1_unit_count {
    type: number
    sql: ${TABLE}.Month1UnitCount ;;
  }

  dimension: month2_unit_count {
    type: number
    sql: ${TABLE}.Month2UnitCount ;;
  }

  dimension: month3_unit_count {
    type: number
    sql: ${TABLE}.Month3UnitCount ;;
  }

  dimension: month4_unit_count {
    type: number
    sql: ${TABLE}.Month4UnitCount ;;
  }

  dimension: month5_unit_count {
    type: number
    sql: ${TABLE}.Month5UnitCount ;;
  }

  dimension: month6_unit_count {
    type: number
    sql: ${TABLE}.Month6UnitCount ;;
  }

  dimension: month7_unit_count {
    type: number
    sql: ${TABLE}.Month7UnitCount ;;
  }

  dimension: month8_unit_count {
    type: number
    sql: ${TABLE}.Month8UnitCount ;;
  }

  dimension: month9_unit_count {
    type: number
    sql: ${TABLE}.Month9UnitCount ;;
  }

  dimension: rate_spec {
    type: number
    sql: ${TABLE}.RateSpec ;;
  }

  dimension: rate_spec1 {
    type: number
    sql: ${TABLE}.RateSpec1 ;;
  }

  dimension: rate_spec10 {
    type: number
    sql: ${TABLE}.RateSpec10 ;;
  }

  dimension: rate_spec11 {
    type: number
    sql: ${TABLE}.RateSpec11 ;;
  }

  dimension: rate_spec12 {
    type: number
    sql: ${TABLE}.RateSpec12 ;;
  }

  dimension: rate_spec2 {
    type: number
    sql: ${TABLE}.RateSpec2 ;;
  }

  dimension: rate_spec3 {
    type: number
    sql: ${TABLE}.RateSpec3 ;;
  }

  dimension: rate_spec4 {
    type: number
    sql: ${TABLE}.RateSpec4 ;;
  }

  dimension: rate_spec5 {
    type: number
    sql: ${TABLE}.RateSpec5 ;;
  }

  dimension: rate_spec6 {
    type: number
    sql: ${TABLE}.RateSpec6 ;;
  }

  dimension: rate_spec7 {
    type: number
    sql: ${TABLE}.RateSpec7 ;;
  }

  dimension: rate_spec8 {
    type: number
    sql: ${TABLE}.RateSpec8 ;;
  }

  dimension: rate_spec9 {
    type: number
    sql: ${TABLE}.RateSpec9 ;;
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

  dimension: tbmonth10_charge {
    type: number
    sql: ${TABLE}.TBMonth10Charge ;;
  }

  dimension: tbmonth11_charge {
    type: number
    sql: ${TABLE}.TBMonth11Charge ;;
  }

  dimension: tbmonth12_charge {
    type: number
    sql: ${TABLE}.TBMonth12Charge ;;
  }

  dimension: tbmonth1_charge {
    type: number
    sql: ${TABLE}.TBMonth1Charge ;;
  }

  dimension: tbmonth2_charge {
    type: number
    sql: ${TABLE}.TBMonth2Charge ;;
  }

  dimension: tbmonth3_charge {
    type: number
    sql: ${TABLE}.TBMonth3Charge ;;
  }

  dimension: tbmonth4_charge {
    type: number
    sql: ${TABLE}.TBMonth4Charge ;;
  }

  dimension: tbmonth5_charge {
    type: number
    sql: ${TABLE}.TBMonth5Charge ;;
  }

  dimension: tbmonth6_charge {
    type: number
    sql: ${TABLE}.TBMonth6Charge ;;
  }

  dimension: tbmonth7_charge {
    type: number
    sql: ${TABLE}.TBMonth7Charge ;;
  }

  dimension: tbmonth8_charge {
    type: number
    sql: ${TABLE}.TBMonth8Charge ;;
  }

  dimension: tbmonth9_charge {
    type: number
    sql: ${TABLE}.TBMonth9Charge ;;
  }

  dimension: tmonth10_charge {
    type: number
    sql: ${TABLE}.TMonth10Charge ;;
  }

  dimension: tmonth11_charge {
    type: number
    sql: ${TABLE}.TMonth11Charge ;;
  }

  dimension: tmonth12_charge {
    type: number
    sql: ${TABLE}.TMonth12Charge ;;
  }

  dimension: tmonth1_charge {
    type: number
    sql: ${TABLE}.TMonth1Charge ;;
  }

  dimension: tmonth2_charge {
    type: number
    sql: ${TABLE}.TMonth2Charge ;;
  }

  dimension: tmonth3_charge {
    type: number
    sql: ${TABLE}.TMonth3Charge ;;
  }

  dimension: tmonth4_charge {
    type: number
    sql: ${TABLE}.TMonth4Charge ;;
  }

  dimension: tmonth5_charge {
    type: number
    sql: ${TABLE}.TMonth5Charge ;;
  }

  dimension: tmonth6_charge {
    type: number
    sql: ${TABLE}.TMonth6Charge ;;
  }

  dimension: tmonth7_charge {
    type: number
    sql: ${TABLE}.TMonth7Charge ;;
  }

  dimension: tmonth8_charge {
    type: number
    sql: ${TABLE}.TMonth8Charge ;;
  }

  dimension: tmonth9_charge {
    type: number
    sql: ${TABLE}.TMonth9Charge ;;
  }

  dimension: unit_budget {
    type: number
    sql: ${TABLE}.UnitBudget ;;
  }

  measure: count {
    type: count
    drill_fields: [class_name, str_service_name]
  }
}
