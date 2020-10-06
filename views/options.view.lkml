view: options {
  sql_table_name: dbo.Options ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: allow_sbloverwrite {
    type: string
    sql: ${TABLE}.AllowSBLOverwrite ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.AppID ;;
  }

  dimension: asset_capacity_model {
    type: number
    sql: ${TABLE}.AssetCapacityModel ;;
  }

  dimension: asset_doc_path {
    type: string
    sql: ${TABLE}.AssetDocPath ;;
  }

  dimension: balance_mode {
    type: string
    sql: ${TABLE}.BalanceMode ;;
  }

  dimension: billing_api {
    type: string
    sql: ${TABLE}.BillingAPI ;;
  }

  dimension: calculate_capex {
    type: string
    sql: ${TABLE}.CalculateCapex ;;
  }

  dimension: calculate_charges {
    type: string
    sql: ${TABLE}.CalculateCharges ;;
  }

  dimension: capacity_model {
    type: number
    sql: ${TABLE}.CapacityModel ;;
  }

  dimension: checked_month {
    type: number
    sql: ${TABLE}.CheckedMonth ;;
  }

  dimension: clear_suites_db_link {
    type: string
    sql: ${TABLE}.ClearSuitesDbLink ;;
  }

  dimension: comments_attachment_path {
    type: string
    sql: ${TABLE}.CommentsAttachmentPath ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: contract_doc_path {
    type: string
    sql: ${TABLE}.ContractDocPath ;;
  }

  dimension: contract_reminder {
    type: number
    sql: ${TABLE}.ContractReminder ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: default_annual_working_days {
    type: number
    sql: ${TABLE}.DefaultAnnualWorkingDays ;;
  }

  dimension: default_annual_working_hours {
    type: number
    sql: ${TABLE}.DefaultAnnualWorkingHours ;;
  }

  dimension_group: dtm_end {
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
    sql: ${TABLE}.dtmEnd ;;
  }

  dimension_group: dtm_roll_contract_fystart {
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
    sql: ${TABLE}.dtmRollContractFYStartDate ;;
  }

  dimension_group: dtm_roll_forecast_fystart {
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
    sql: ${TABLE}.dtmRollForecastFYStartDate ;;
  }

  dimension_group: dtm_start {
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
    sql: ${TABLE}.dtmStart ;;
  }

  dimension: enable_amber {
    type: string
    sql: ${TABLE}.EnableAmber ;;
  }

  dimension: expense_doc_path {
    type: string
    sql: ${TABLE}.ExpenseDocPath ;;
  }

  dimension: f_unique_ref_id {
    type: string
    sql: ${TABLE}.fUniqueRefID ;;
  }

  dimension: f_unique_ref_id2 {
    type: string
    sql: ${TABLE}.fUniqueRefID2 ;;
  }

  dimension: forecast_year_num {
    type: number
    sql: ${TABLE}.ForecastYearNum ;;
  }

  dimension: gldblocation {
    type: string
    sql: ${TABLE}.GLDBLocation ;;
  }

  dimension: growth_capex_base {
    type: number
    sql: ${TABLE}.GrowthCapexBase ;;
  }

  dimension: import_files_path {
    type: string
    sql: ${TABLE}.ImportFilesPath ;;
  }

  dimension: is_asset_reminder_days {
    type: string
    sql: ${TABLE}.IsAssetReminderDays ;;
  }

  dimension: is_budget {
    type: string
    sql: ${TABLE}.IsBudget ;;
  }

  dimension: is_capacity_model_changed {
    type: string
    sql: ${TABLE}.IsCapacityModelChanged ;;
  }

  dimension: is_display_budget {
    type: string
    sql: ${TABLE}.IsDisplayBudget ;;
  }

  dimension: is_display_currency_symbol {
    type: string
    sql: ${TABLE}.IsDisplayCurrencySymbol ;;
  }

  dimension: is_display_negative_bracket {
    type: string
    sql: ${TABLE}.IsDisplayNegativeBracket ;;
  }

  dimension: is_read_only {
    type: string
    sql: ${TABLE}.IsReadOnly ;;
  }

  dimension: is_synchronize_alloc_m {
    type: number
    sql: ${TABLE}.IsSynchronizeAllocM ;;
  }

  dimension: lease_reminder {
    type: number
    sql: ${TABLE}.LeaseReminder ;;
  }

  dimension: locked_all_expenses_allocations {
    type: number
    sql: ${TABLE}.LockedAllExpensesAllocations ;;
  }

  dimension: locked_allocation_month {
    type: number
    sql: ${TABLE}.LockedAllocationMonth ;;
  }

  dimension: locked_rate_month {
    type: number
    sql: ${TABLE}.LockedRateMonth ;;
  }

  dimension: locked_unit_month {
    type: number
    sql: ${TABLE}.LockedUnitMonth ;;
  }

  dimension: only_non_staff_exp_in_selected_month {
    type: string
    sql: ${TABLE}.OnlyNonStaffExpInSelectedMonth ;;
  }

  dimension: pamdb_link {
    type: string
    sql: ${TABLE}.PAMDbLink ;;
  }

  dimension: protect_fcexpenses {
    type: string
    sql: ${TABLE}.ProtectFCExpenses ;;
  }

  dimension: show_usage_override {
    type: string
    sql: ${TABLE}.ShowUsageOverride ;;
  }

  dimension: starting_month {
    type: number
    sql: ${TABLE}.StartingMonth ;;
  }

  dimension: to_linked_load_actual {
    type: string
    sql: ${TABLE}.ToLinkedLoadActual ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}."Update" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [id, company_name]
  }
}
