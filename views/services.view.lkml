view: services {
  sql_table_name: dbo.Services ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
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

  dimension: allocation_comment {
    type: string
    sql: ${TABLE}.AllocationComment ;;
  }

  dimension: asset_charges_filter_type {
    type: number
    sql: ${TABLE}.AssetChargesFilterType ;;
  }

  dimension: bcharges {
    type: number
    sql: ${TABLE}.Bcharges ;;
  }

  dimension: bdriver_count {
    type: number
    sql: ${TABLE}.BDriverCount ;;
  }

  dimension: bgross_cost {
    type: number
    sql: ${TABLE}.BGrossCost ;;
  }

  dimension: bmc {
    type: string
    sql: ${TABLE}.BMC ;;
  }

  dimension: brate_avg {
    type: number
    sql: ${TABLE}.BRateAvg ;;
  }

  dimension: brate_calc {
    type: number
    sql: ${TABLE}.BRateCalc ;;
  }

  dimension: brate_spec {
    type: number
    sql: ${TABLE}.BRateSpec ;;
  }

  dimension: btotal_cost {
    type: number
    sql: ${TABLE}.BTotalCost ;;
  }

  dimension: btotal_expenses {
    type: number
    sql: ${TABLE}.BTotalExpenses ;;
  }

  dimension: bunits_charged {
    type: number
    sql: ${TABLE}.BUnitsCharged ;;
  }

  dimension: bvolume_spec {
    type: number
    sql: ${TABLE}.BVolumeSpec ;;
  }

  dimension: calc_type {
    type: string
    sql: ${TABLE}.CalcType ;;
  }

  dimension: calculated_driver_count {
    type: string
    sql: ${TABLE}.CalculatedDriverCount ;;
  }

  dimension: charge_account_code {
    type: string
    sql: ${TABLE}.ChargeAccountCode ;;
  }

  dimension: charge_cost_category {
    type: string
    sql: ${TABLE}.ChargeCostCategory ;;
  }

  dimension: classification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClassificationID ;;
  }

  dimension: classification_id2 {
    type: number
    sql: ${TABLE}.ClassificationID2 ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
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

  dimension: gross_adj {
    type: number
    sql: ${TABLE}.GrossAdj ;;
  }

  dimension: gross_adj_reason {
    type: string
    sql: ${TABLE}.GrossAdjReason ;;
  }

  dimension: int_sensitivity {
    type: number
    sql: ${TABLE}.intSensitivity ;;
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

  dimension: is_asset_calculated {
    type: string
    sql: ${TABLE}.IsAssetCalculated ;;
  }

  dimension: is_asset_charges {
    type: string
    sql: ${TABLE}.IsAssetCharges ;;
  }

  dimension: is_auto_scto_scallocations {
    type: string
    sql: ${TABLE}.IsAutoSCToSCAllocations ;;
  }

  dimension: is_budget_flag {
    type: string
    sql: ${TABLE}.IsBudgetFlag ;;
  }

  dimension: is_cloud_asset_charges {
    type: string
    sql: ${TABLE}.IsCloudAssetCharges ;;
  }

  dimension: is_exclude_spare_capacity {
    type: string
    sql: ${TABLE}.IsExcludeSpareCapacity ;;
  }

  dimension: is_locked {
    type: string
    sql: ${TABLE}.IsLocked ;;
  }

  dimension: is_overhead {
    type: string
    sql: ${TABLE}.IsOverhead ;;
  }

  dimension: monthly_calculation_type {
    type: number
    sql: ${TABLE}.MonthlyCalculationType ;;
  }

  dimension: nabsorption {
    type: number
    sql: ${TABLE}.Nabsorption ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: net_adj {
    type: number
    sql: ${TABLE}.NetAdj ;;
  }

  dimension: net_adj_fact {
    type: number
    sql: ${TABLE}.NetAdjFact ;;
  }

  dimension: net_adj_fact_reason {
    type: string
    sql: ${TABLE}.NetAdjFactReason ;;
  }

  dimension: net_adj_reason {
    type: string
    sql: ${TABLE}.NetAdjReason ;;
  }

  dimension: pabsorption {
    type: number
    sql: ${TABLE}.Pabsorption ;;
  }

  dimension_group: r_version {
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
    sql: ${TABLE}.rVersion ;;
  }

  dimension: rate_calc {
    type: number
    sql: ${TABLE}.RateCalc ;;
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

  dimension: rate_spec {
    type: number
    sql: ${TABLE}.RateSpec ;;
  }

  dimension: rate_unit {
    type: string
    sql: ${TABLE}.RateUnit ;;
  }

  dimension: sccalculation_type {
    type: number
    sql: ${TABLE}.SCCalculationType ;;
  }

  dimension: scto_scallocation_flag {
    type: string
    sql: ${TABLE}.SCtoSCAllocationFlag ;;
  }

  dimension: service_condition {
    type: string
    sql: ${TABLE}.ServiceCondition ;;
  }

  dimension: service_ower {
    type: string
    sql: ${TABLE}.ServiceOwer ;;
  }

  dimension: service_type {
    type: number
    sql: ${TABLE}.ServiceType ;;
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

  dimension: sort_key {
    type: string
    sql: ${TABLE}.SortKey ;;
  }

  dimension: transfer_related {
    type: string
    sql: ${TABLE}.TransferRelated ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: usage_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UsageSetID ;;
  }

  dimension: use_for_expense_forecasting {
    type: string
    sql: ${TABLE}.UseForExpenseForecasting ;;
  }

  dimension: vol_unit {
    type: string
    sql: ${TABLE}.VolUnit ;;
  }

  dimension: volume_calc {
    type: number
    sql: ${TABLE}.VolumeCalc ;;
  }

  dimension: volume_spec {
    type: number
    sql: ${TABLE}.VolumeSpec ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      classification.id,
      classification.name,
      usage_set.id,
      usage_set.name,
      assessment_assignment.count,
      business_service_fcdiff.count,
      cost_centre_filter.count,
      growth_capex.count,
      service_comp_fcdiff.count,
      team_filter.count
    ]
  }
}
