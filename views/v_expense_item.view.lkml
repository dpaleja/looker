view: v_expense_item {
  sql_table_name: dbo.vExpenseItem ;;
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

  dimension: acabalance {
    type: string
    sql: ${TABLE}.ACABalance ;;
  }

  dimension: account_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AccountCodeID ;;
  }

  dimension: account_code_name {
    type: string
    sql: ${TABLE}.AccountCodeName ;;
  }

  dimension: allocation_basic {
    type: number
    sql: ${TABLE}.AllocationBasic ;;
  }

  dimension: annual_amount {
    type: number
    sql: ${TABLE}.AnnualAmount ;;
  }

  dimension: annual_amount_capex {
    type: number
    sql: ${TABLE}.AnnualAmountCapex ;;
  }

  dimension: applied_months {
    type: number
    sql: ${TABLE}.AppliedMonths ;;
  }

  dimension: asset_costed_type {
    type: number
    sql: ${TABLE}.AssetCostedType ;;
  }

  dimension: bannual_amount {
    type: number
    sql: ${TABLE}.BAnnualAmount ;;
  }

  dimension: bannual_amount_capex {
    type: number
    sql: ${TABLE}.BAnnualAmountCapex ;;
  }

  dimension: bmonth10_amount {
    type: number
    sql: ${TABLE}.BMonth10Amount ;;
  }

  dimension: bmonth10_amount_capex {
    type: number
    sql: ${TABLE}.BMonth10AmountCapex ;;
  }

  dimension: bmonth10_osamount {
    type: number
    sql: ${TABLE}.BMonth10OSAmount ;;
  }

  dimension: bmonth11_amount {
    type: number
    sql: ${TABLE}.BMonth11Amount ;;
  }

  dimension: bmonth11_amount_capex {
    type: number
    sql: ${TABLE}.BMonth11AmountCapex ;;
  }

  dimension: bmonth11_osamount {
    type: number
    sql: ${TABLE}.BMonth11OSAmount ;;
  }

  dimension: bmonth12_amount {
    type: number
    sql: ${TABLE}.BMonth12Amount ;;
  }

  dimension: bmonth12_amount_capex {
    type: number
    sql: ${TABLE}.BMonth12AmountCapex ;;
  }

  dimension: bmonth12_osamount {
    type: number
    sql: ${TABLE}.BMonth12OSAmount ;;
  }

  dimension: bmonth1_amount {
    type: number
    sql: ${TABLE}.BMonth1Amount ;;
  }

  dimension: bmonth1_amount_capex {
    type: number
    sql: ${TABLE}.BMonth1AmountCapex ;;
  }

  dimension: bmonth1_osamount {
    type: number
    sql: ${TABLE}.BMonth1OSAmount ;;
  }

  dimension: bmonth2_amount {
    type: number
    sql: ${TABLE}.BMonth2Amount ;;
  }

  dimension: bmonth2_amount_capex {
    type: number
    sql: ${TABLE}.BMonth2AmountCapex ;;
  }

  dimension: bmonth2_osamount {
    type: number
    sql: ${TABLE}.BMonth2OSAmount ;;
  }

  dimension: bmonth3_amount {
    type: number
    sql: ${TABLE}.BMonth3Amount ;;
  }

  dimension: bmonth3_amount_capex {
    type: number
    sql: ${TABLE}.BMonth3AmountCapex ;;
  }

  dimension: bmonth3_osamount {
    type: number
    sql: ${TABLE}.BMonth3OSAmount ;;
  }

  dimension: bmonth4_amount {
    type: number
    sql: ${TABLE}.BMonth4Amount ;;
  }

  dimension: bmonth4_amount_capex {
    type: number
    sql: ${TABLE}.BMonth4AmountCapex ;;
  }

  dimension: bmonth4_osamount {
    type: number
    sql: ${TABLE}.BMonth4OSAmount ;;
  }

  dimension: bmonth5_amount {
    type: number
    sql: ${TABLE}.BMonth5Amount ;;
  }

  dimension: bmonth5_amount_capex {
    type: number
    sql: ${TABLE}.BMonth5AmountCapex ;;
  }

  dimension: bmonth5_osamount {
    type: number
    sql: ${TABLE}.BMonth5OSAmount ;;
  }

  dimension: bmonth6_amount {
    type: number
    sql: ${TABLE}.BMonth6Amount ;;
  }

  dimension: bmonth6_amount_capex {
    type: number
    sql: ${TABLE}.BMonth6AmountCapex ;;
  }

  dimension: bmonth6_osamount {
    type: number
    sql: ${TABLE}.BMonth6OSAmount ;;
  }

  dimension: bmonth7_amount {
    type: number
    sql: ${TABLE}.BMonth7Amount ;;
  }

  dimension: bmonth7_amount_capex {
    type: number
    sql: ${TABLE}.BMonth7AmountCapex ;;
  }

  dimension: bmonth7_osamount {
    type: number
    sql: ${TABLE}.BMonth7OSAmount ;;
  }

  dimension: bmonth8_amount {
    type: number
    sql: ${TABLE}.BMonth8Amount ;;
  }

  dimension: bmonth8_amount_capex {
    type: number
    sql: ${TABLE}.BMonth8AmountCapex ;;
  }

  dimension: bmonth8_osamount {
    type: number
    sql: ${TABLE}.BMonth8OSAmount ;;
  }

  dimension: bmonth9_amount {
    type: number
    sql: ${TABLE}.BMonth9Amount ;;
  }

  dimension: bmonth9_amount_capex {
    type: number
    sql: ${TABLE}.BMonth9AmountCapex ;;
  }

  dimension: bmonth9_osamount {
    type: number
    sql: ${TABLE}.BMonth9OSAmount ;;
  }

  dimension: capex_category {
    type: number
    sql: ${TABLE}.CapexCategory ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}.ContractID ;;
  }

  dimension: cost_category {
    type: string
    sql: ${TABLE}.CostCategory ;;
  }

  dimension: cost_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCategoryID ;;
  }

  dimension: cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCentreID ;;
  }

  dimension: cost_centre_name {
    type: string
    sql: ${TABLE}.CostCentreName ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: excalculation_type {
    type: number
    sql: ${TABLE}.EXCalculationType ;;
  }

  dimension: exchange_calculated {
    type: string
    sql: ${TABLE}.ExchangeCalculated ;;
  }

  dimension: exchange_rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExchangeRateId ;;
  }

  dimension: expense_assumption_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExpenseAssumptionID ;;
  }

  dimension: expense_type {
    type: number
    sql: ${TABLE}.ExpenseType ;;
  }

  dimension: fte_count {
    type: number
    sql: ${TABLE}.FteCount ;;
  }

  dimension: fte_type {
    type: number
    sql: ${TABLE}.FteType ;;
  }

  dimension: is_asset_allocated {
    type: string
    sql: ${TABLE}.IsAssetAllocated ;;
  }

  dimension: is_asset_costed {
    type: string
    sql: ${TABLE}.IsAssetCosted ;;
  }

  dimension: is_budget_flag {
    type: string
    sql: ${TABLE}.IsBudgetFlag ;;
  }

  dimension: is_capex {
    type: string
    sql: ${TABLE}.IsCapex ;;
  }

  dimension: is_contract {
    type: string
    sql: ${TABLE}.IsContract ;;
  }

  dimension: is_fte_count_overridden {
    type: string
    sql: ${TABLE}.IsFteCountOverridden ;;
  }

  dimension: is_service_component_balanced {
    type: string
    sql: ${TABLE}.IsServiceComponentBalanced ;;
  }

  dimension: is_staff_on_cost {
    type: string
    sql: ${TABLE}.IsStaffOnCost ;;
  }

  dimension: job_class {
    type: number
    sql: ${TABLE}.JobClass ;;
  }

  dimension: month10_amount {
    type: number
    sql: ${TABLE}.Month10Amount ;;
  }

  dimension: month10_amount_capex {
    type: number
    sql: ${TABLE}.Month10AmountCapex ;;
  }

  dimension: month10_osamount {
    type: number
    sql: ${TABLE}.Month10OSAmount ;;
  }

  dimension: month11_amount {
    type: number
    sql: ${TABLE}.Month11Amount ;;
  }

  dimension: month11_amount_capex {
    type: number
    sql: ${TABLE}.Month11AmountCapex ;;
  }

  dimension: month11_osamount {
    type: number
    sql: ${TABLE}.Month11OSAmount ;;
  }

  dimension: month12_amount {
    type: number
    sql: ${TABLE}.Month12Amount ;;
  }

  dimension: month12_amount_capex {
    type: number
    sql: ${TABLE}.Month12AmountCapex ;;
  }

  dimension: month12_osamount {
    type: number
    sql: ${TABLE}.Month12OSAmount ;;
  }

  dimension: month1_amount {
    type: number
    sql: ${TABLE}.Month1Amount ;;
  }

  dimension: month1_amount_capex {
    type: number
    sql: ${TABLE}.Month1AmountCapex ;;
  }

  dimension: month1_osamount {
    type: number
    sql: ${TABLE}.Month1OSAmount ;;
  }

  dimension: month2_amount {
    type: number
    sql: ${TABLE}.Month2Amount ;;
  }

  dimension: month2_amount_capex {
    type: number
    sql: ${TABLE}.Month2AmountCapex ;;
  }

  dimension: month2_osamount {
    type: number
    sql: ${TABLE}.Month2OSAmount ;;
  }

  dimension: month3_amount {
    type: number
    sql: ${TABLE}.Month3Amount ;;
  }

  dimension: month3_amount_capex {
    type: number
    sql: ${TABLE}.Month3AmountCapex ;;
  }

  dimension: month3_osamount {
    type: number
    sql: ${TABLE}.Month3OSAmount ;;
  }

  dimension: month4_amount {
    type: number
    sql: ${TABLE}.Month4Amount ;;
  }

  dimension: month4_amount_capex {
    type: number
    sql: ${TABLE}.Month4AmountCapex ;;
  }

  dimension: month4_osamount {
    type: number
    sql: ${TABLE}.Month4OSAmount ;;
  }

  dimension: month5_amount {
    type: number
    sql: ${TABLE}.Month5Amount ;;
  }

  dimension: month5_amount_capex {
    type: number
    sql: ${TABLE}.Month5AmountCapex ;;
  }

  dimension: month5_osamount {
    type: number
    sql: ${TABLE}.Month5OSAmount ;;
  }

  dimension: month6_amount {
    type: number
    sql: ${TABLE}.Month6Amount ;;
  }

  dimension: month6_amount_capex {
    type: number
    sql: ${TABLE}.Month6AmountCapex ;;
  }

  dimension: month6_osamount {
    type: number
    sql: ${TABLE}.Month6OSAmount ;;
  }

  dimension: month7_amount {
    type: number
    sql: ${TABLE}.Month7Amount ;;
  }

  dimension: month7_amount_capex {
    type: number
    sql: ${TABLE}.Month7AmountCapex ;;
  }

  dimension: month7_osamount {
    type: number
    sql: ${TABLE}.Month7OSAmount ;;
  }

  dimension: month8_amount {
    type: number
    sql: ${TABLE}.Month8Amount ;;
  }

  dimension: month8_amount_capex {
    type: number
    sql: ${TABLE}.Month8AmountCapex ;;
  }

  dimension: month8_osamount {
    type: number
    sql: ${TABLE}.Month8OSAmount ;;
  }

  dimension: month9_amount {
    type: number
    sql: ${TABLE}.Month9Amount ;;
  }

  dimension: month9_amount_capex {
    type: number
    sql: ${TABLE}.Month9AmountCapex ;;
  }

  dimension: month9_osamount {
    type: number
    sql: ${TABLE}.Month9OSAmount ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: on_cost_fte_count {
    type: number
    sql: ${TABLE}.OnCostFteCount ;;
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

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamId ;;
  }

  dimension_group: time_stamp {
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
    sql: ${TABLE}.TimeStamp ;;
  }

  dimension: unit_count {
    type: number
    sql: ${TABLE}.UnitCount ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  dimension: user_defined {
    type: string
    sql: ${TABLE}.UserDefined ;;
  }

  dimension: xref_id {
    type: string
    sql: ${TABLE}.XRefID ;;
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
      cost_centre_name,
      account_code_name,
      expense_assumption.id,
      expense_assumption.name,
      exchange_rate.id,
      exchange_rate.name,
      cost_centres.id,
      cost_centres.name,
      account_codes.id,
      account_codes.name,
      cost_category.id,
      cost_category.name,
      team.id,
      team.name
    ]
  }
}
