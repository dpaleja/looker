view: qry_customer_service_with_unit_type {
  sql_table_name: dbo.qryCustomerServiceWithUnitType ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: actual_rate_year1 {
    type: number
    sql: ${TABLE}.ActualRateYear1 ;;
  }

  dimension: actual_rate_year10 {
    type: number
    sql: ${TABLE}.ActualRateYear10 ;;
  }

  dimension: actual_rate_year2 {
    type: number
    sql: ${TABLE}.ActualRateYear2 ;;
  }

  dimension: actual_rate_year3 {
    type: number
    sql: ${TABLE}.ActualRateYear3 ;;
  }

  dimension: actual_rate_year4 {
    type: number
    sql: ${TABLE}.ActualRateYear4 ;;
  }

  dimension: actual_rate_year5 {
    type: number
    sql: ${TABLE}.ActualRateYear5 ;;
  }

  dimension: actual_rate_year6 {
    type: number
    sql: ${TABLE}.ActualRateYear6 ;;
  }

  dimension: actual_rate_year7 {
    type: number
    sql: ${TABLE}.ActualRateYear7 ;;
  }

  dimension: actual_rate_year8 {
    type: number
    sql: ${TABLE}.ActualRateYear8 ;;
  }

  dimension: actual_rate_year9 {
    type: number
    sql: ${TABLE}.ActualRateYear9 ;;
  }

  dimension: adjustment_year1 {
    type: number
    sql: ${TABLE}.AdjustmentYear1 ;;
  }

  dimension: adjustment_year10 {
    type: number
    sql: ${TABLE}.AdjustmentYear10 ;;
  }

  dimension: adjustment_year2 {
    type: number
    sql: ${TABLE}.AdjustmentYear2 ;;
  }

  dimension: adjustment_year3 {
    type: number
    sql: ${TABLE}.AdjustmentYear3 ;;
  }

  dimension: adjustment_year4 {
    type: number
    sql: ${TABLE}.AdjustmentYear4 ;;
  }

  dimension: adjustment_year5 {
    type: number
    sql: ${TABLE}.AdjustmentYear5 ;;
  }

  dimension: adjustment_year6 {
    type: number
    sql: ${TABLE}.AdjustmentYear6 ;;
  }

  dimension: adjustment_year7 {
    type: number
    sql: ${TABLE}.AdjustmentYear7 ;;
  }

  dimension: adjustment_year8 {
    type: number
    sql: ${TABLE}.AdjustmentYear8 ;;
  }

  dimension: adjustment_year9 {
    type: number
    sql: ${TABLE}.AdjustmentYear9 ;;
  }

  dimension: bdriver_count {
    type: number
    sql: ${TABLE}.BDriverCount ;;
  }

  dimension: bmc {
    type: string
    sql: ${TABLE}.BMC ;;
  }

  dimension: calculated_driver_count {
    type: string
    sql: ${TABLE}.CalculatedDriverCount ;;
  }

  dimension_group: commission {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CommissionDate ;;
  }

  dimension: commit_rate {
    type: string
    sql: ${TABLE}.CommitRate ;;
  }

  dimension: cost_driver {
    type: string
    sql: ${TABLE}.CostDriver ;;
  }

  dimension: days_per_year {
    type: number
    sql: ${TABLE}.DaysPerYear ;;
  }

  dimension: dbl_bcharges {
    type: number
    sql: ${TABLE}.dblBcharges ;;
  }

  dimension: dbl_bgross_cost {
    type: number
    sql: ${TABLE}.dblBGrossCost ;;
  }

  dimension: dbl_brate_avg {
    type: number
    sql: ${TABLE}.dblBRateAvg ;;
  }

  dimension: dbl_brate_calc {
    type: number
    sql: ${TABLE}.dblBRateCalc ;;
  }

  dimension: dbl_brate_spec {
    type: number
    sql: ${TABLE}.dblBRateSpec ;;
  }

  dimension: dbl_btotal_cost {
    type: number
    sql: ${TABLE}.dblBTotalCost ;;
  }

  dimension: dbl_btotal_expenses {
    type: number
    sql: ${TABLE}.dblBTotalExpenses ;;
  }

  dimension: dbl_rate_calc {
    type: number
    sql: ${TABLE}.dblRateCalc ;;
  }

  dimension: dbl_rate_spec {
    type: number
    sql: ${TABLE}.dblRateSpec ;;
  }

  dimension_group: decommission {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DecommissionDate ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}.Deleted ;;
  }

  dimension: deleted_in_bmc {
    type: string
    sql: ${TABLE}.DeletedInBMC ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: driver_count {
    type: number
    sql: ${TABLE}.DriverCount ;;
  }

  dimension: driver_count_fy1 {
    type: number
    sql: ${TABLE}.DriverCountFY1 ;;
  }

  dimension: driver_count_fy10 {
    type: number
    sql: ${TABLE}.DriverCountFY10 ;;
  }

  dimension: driver_count_fy2 {
    type: number
    sql: ${TABLE}.DriverCountFY2 ;;
  }

  dimension: driver_count_fy3 {
    type: number
    sql: ${TABLE}.DriverCountFY3 ;;
  }

  dimension: driver_count_fy4 {
    type: number
    sql: ${TABLE}.DriverCountFY4 ;;
  }

  dimension: driver_count_fy5 {
    type: number
    sql: ${TABLE}.DriverCountFY5 ;;
  }

  dimension: driver_count_fy6 {
    type: number
    sql: ${TABLE}.DriverCountFY6 ;;
  }

  dimension: driver_count_fy7 {
    type: number
    sql: ${TABLE}.DriverCountFY7 ;;
  }

  dimension: driver_count_fy8 {
    type: number
    sql: ${TABLE}.DriverCountFY8 ;;
  }

  dimension: driver_count_fy9 {
    type: number
    sql: ${TABLE}.DriverCountFY9 ;;
  }

  dimension: f_calc_type {
    type: string
    sql: ${TABLE}.fCalcType ;;
  }

  dimension: f_exclude_spare_capacity {
    type: string
    sql: ${TABLE}.fExcludeSpareCapacity ;;
  }

  dimension: f_is_asset_calculated {
    type: string
    sql: ${TABLE}.fIsAssetCalculated ;;
  }

  dimension: f_is_budget_flag {
    type: string
    sql: ${TABLE}.fIsBudgetFlag ;;
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

  dimension: is_actual_adj_year1 {
    type: string
    sql: ${TABLE}.IsActualAdjYear1 ;;
  }

  dimension: is_actual_adj_year10 {
    type: string
    sql: ${TABLE}.IsActualAdjYear10 ;;
  }

  dimension: is_actual_adj_year2 {
    type: string
    sql: ${TABLE}.IsActualAdjYear2 ;;
  }

  dimension: is_actual_adj_year3 {
    type: string
    sql: ${TABLE}.IsActualAdjYear3 ;;
  }

  dimension: is_actual_adj_year4 {
    type: string
    sql: ${TABLE}.IsActualAdjYear4 ;;
  }

  dimension: is_actual_adj_year5 {
    type: string
    sql: ${TABLE}.IsActualAdjYear5 ;;
  }

  dimension: is_actual_adj_year6 {
    type: string
    sql: ${TABLE}.IsActualAdjYear6 ;;
  }

  dimension: is_actual_adj_year7 {
    type: string
    sql: ${TABLE}.IsActualAdjYear7 ;;
  }

  dimension: is_actual_adj_year8 {
    type: string
    sql: ${TABLE}.IsActualAdjYear8 ;;
  }

  dimension: is_actual_adj_year9 {
    type: string
    sql: ${TABLE}.IsActualAdjYear9 ;;
  }

  dimension: is_time {
    type: string
    sql: ${TABLE}.IsTime ;;
  }

  dimension: lng_bunits_charged {
    type: number
    sql: ${TABLE}.lngBUnitsCharged ;;
  }

  dimension: lng_bvolume_spec {
    type: number
    sql: ${TABLE}.lngBVolumeSpec ;;
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

  dimension: rate_month1 {
    type: number
    sql: ${TABLE}.rateMonth1 ;;
  }

  dimension: rate_month10 {
    type: number
    sql: ${TABLE}.rateMonth10 ;;
  }

  dimension: rate_month11 {
    type: number
    sql: ${TABLE}.rateMonth11 ;;
  }

  dimension: rate_month12 {
    type: number
    sql: ${TABLE}.rateMonth12 ;;
  }

  dimension: rate_month2 {
    type: number
    sql: ${TABLE}.rateMonth2 ;;
  }

  dimension: rate_month3 {
    type: number
    sql: ${TABLE}.rateMonth3 ;;
  }

  dimension: rate_month4 {
    type: number
    sql: ${TABLE}.rateMonth4 ;;
  }

  dimension: rate_month5 {
    type: number
    sql: ${TABLE}.rateMonth5 ;;
  }

  dimension: rate_month6 {
    type: number
    sql: ${TABLE}.rateMonth6 ;;
  }

  dimension: rate_month7 {
    type: number
    sql: ${TABLE}.rateMonth7 ;;
  }

  dimension: rate_month8 {
    type: number
    sql: ${TABLE}.rateMonth8 ;;
  }

  dimension: rate_month9 {
    type: number
    sql: ${TABLE}.rateMonth9 ;;
  }

  dimension: service_condition {
    type: string
    sql: ${TABLE}.ServiceCondition ;;
  }

  dimension: service_ower {
    type: string
    sql: ${TABLE}.ServiceOwer ;;
  }

  dimension: sla {
    type: string
    sql: ${TABLE}.SLA ;;
  }

  dimension: slauser_field1 {
    type: string
    sql: ${TABLE}.SLAUserField1 ;;
  }

  dimension: slauser_field2 {
    type: string
    sql: ${TABLE}.SLAUserField2 ;;
  }

  dimension: sng_month1 {
    type: number
    sql: ${TABLE}.sngMonth1 ;;
  }

  dimension: sng_month10 {
    type: number
    sql: ${TABLE}.sngMonth10 ;;
  }

  dimension: sng_month11 {
    type: number
    sql: ${TABLE}.sngMonth11 ;;
  }

  dimension: sng_month12 {
    type: number
    sql: ${TABLE}.sngMonth12 ;;
  }

  dimension: sng_month2 {
    type: number
    sql: ${TABLE}.sngMonth2 ;;
  }

  dimension: sng_month3 {
    type: number
    sql: ${TABLE}.sngMonth3 ;;
  }

  dimension: sng_month4 {
    type: number
    sql: ${TABLE}.sngMonth4 ;;
  }

  dimension: sng_month5 {
    type: number
    sql: ${TABLE}.sngMonth5 ;;
  }

  dimension: sng_month6 {
    type: number
    sql: ${TABLE}.sngMonth6 ;;
  }

  dimension: sng_month7 {
    type: number
    sql: ${TABLE}.sngMonth7 ;;
  }

  dimension: sng_month8 {
    type: number
    sql: ${TABLE}.sngMonth8 ;;
  }

  dimension: sng_month9 {
    type: number
    sql: ${TABLE}.sngMonth9 ;;
  }

  dimension: str_charge_account_code {
    type: string
    sql: ${TABLE}.strChargeAccountCode ;;
  }

  dimension: str_charge_cost_category {
    type: string
    sql: ${TABLE}.strChargeCostCategory ;;
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

  dimension: str_service_type {
    type: number
    sql: ${TABLE}.strServiceType ;;
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
    drill_fields: [id, name, str_service_name]
  }
}
