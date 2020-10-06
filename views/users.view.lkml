view: users {
  sql_table_name: dbo.Users ;;
  drill_fields: [oauth_user_id]

  dimension: oauth_user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.OAuthUserID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: aduser_name {
    type: string
    sql: ${TABLE}.ADUserName ;;
  }

  dimension: aduser_sid {
    type: string
    sql: ${TABLE}.ADUserSID ;;
  }

  dimension: alert_limit {
    type: number
    sql: ${TABLE}.AlertLimit ;;
  }

  dimension: allow_administrator_login {
    type: string
    sql: ${TABLE}.AllowAdministratorLogin ;;
  }

  dimension: authorization_type {
    type: number
    sql: ${TABLE}.AuthorizationType ;;
  }

  dimension: bmcintegration {
    type: string
    sql: ${TABLE}.BMCIntegration ;;
  }

  dimension: can_push_charges_to_billing {
    type: string
    sql: ${TABLE}.CanPushChargesToBilling ;;
  }

  dimension: cbm {
    type: string
    sql: ${TABLE}.CBM ;;
  }

  dimension: cceaccess {
    type: string
    sql: ${TABLE}.CCEAccess ;;
  }

  dimension: cceonly {
    type: string
    sql: ${TABLE}.CCEOnly ;;
  }

  dimension: checkpoint {
    type: string
    sql: ${TABLE}."Checkpoint" ;;
  }

  dimension: cost_managed {
    type: string
    sql: ${TABLE}.CostManaged ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: display_additional_tabs {
    type: string
    sql: ${TABLE}.DisplayAdditionalTabs ;;
  }

  dimension: display_alloc_m {
    type: string
    sql: ${TABLE}.DisplayAllocM ;;
  }

  dimension: display_asset_filter {
    type: string
    sql: ${TABLE}.DisplayAssetFilter ;;
  }

  dimension: display_budget {
    type: string
    sql: ${TABLE}.DisplayBudget ;;
  }

  dimension: display_left_menu {
    type: string
    sql: ${TABLE}.DisplayLeftMenu ;;
  }

  dimension: display_scfilter {
    type: string
    sql: ${TABLE}.DisplaySCFilter ;;
  }

  dimension: display_sensitivity {
    type: string
    sql: ${TABLE}.DisplaySensitivity ;;
  }

  dimension: display_summary_fc {
    type: string
    sql: ${TABLE}.DisplaySummaryFC ;;
  }

  dimension: display_team_filter {
    type: string
    sql: ${TABLE}.DisplayTeamFilter ;;
  }

  dimension: display_top_menu {
    type: string
    sql: ${TABLE}.DisplayTopMenu ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: eom {
    type: string
    sql: ${TABLE}.EOM ;;
  }

  dimension: event_reminders {
    type: string
    sql: ${TABLE}.EventReminders ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: folder_acronyms {
    type: string
    sql: ${TABLE}.FolderAcronyms ;;
  }

  dimension: forecast_expense {
    type: string
    sql: ${TABLE}.ForecastExpense ;;
  }

  dimension: glload {
    type: string
    sql: ${TABLE}.GLLoad ;;
  }

  dimension: glmapping {
    type: string
    sql: ${TABLE}.GLMapping ;;
  }

  dimension: glmapping_restricted_ac {
    type: string
    sql: ${TABLE}.GLMappingRestrictedAC ;;
  }

  dimension: glupdate {
    type: string
    sql: ${TABLE}.GLUpdate ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: import_export {
    type: string
    sql: ${TABLE}.ImportExport ;;
  }

  dimension: import_for_local_user {
    type: string
    sql: ${TABLE}.ImportForLocalUser ;;
  }

  dimension: import_templates {
    type: string
    sql: ${TABLE}.ImportTemplates ;;
  }

  dimension: is_add_to_budget {
    type: string
    sql: ${TABLE}.IsAddToBudget ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: minimal {
    type: string
    sql: ${TABLE}.Minimal ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  dimension: rate_admin {
    type: string
    sql: ${TABLE}.RateAdmin ;;
  }

  dimension: reminder {
    type: string
    sql: ${TABLE}.Reminder ;;
  }

  dimension: scallocation {
    type: string
    sql: ${TABLE}.SCAllocation ;;
  }

  dimension: time_loading {
    type: string
    sql: ${TABLE}.TimeLoading ;;
  }

  dimension: usage {
    type: string
    sql: ${TABLE}.Usage ;;
  }

  dimension: usage_import_export {
    type: string
    sql: ${TABLE}.UsageImportExport ;;
  }

  dimension: use_default_labels {
    type: string
    sql: ${TABLE}.UseDefaultLabels ;;
  }

  dimension: user_type {
    type: number
    sql: ${TABLE}.UserType ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      oauth_user_id,
      name,
      first_name,
      last_name,
      aduser_name,
      asset_lifecycle_reminders.count,
      assets.count,
      contract_reminders.count,
      dashboard_setting_users.count,
      exforecast_year_variance.count,
      exmonthly_variance.count,
      frequently_used_exports.count,
      frequently_used_reports.count,
      login_history.count,
      month_locking_log.count,
      password_history.count,
      user_account_code_access.count,
      user_activity.count,
      user_cost_centre_access.count,
      user_customer_unit_access.count,
      user_security.count,
      user_session.count,
      user_task_execute_log.count,
      user_task_monthly_state.count,
      user_task_package_allocation.count,
      v_hide_salaries.count,
      v_user_account_code.count,
      v_user_cost_centre.count,
      v_user_customer_unit.count,
      v_user_expense_item.count
    ]
  }
}
