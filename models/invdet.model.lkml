connection: "azuresql"

# include all the views
include: "/views/**/*.view"

datagroup: invdet_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: invdet_default_datagroup

explore: access_level {}

explore: account_code_access_level {}

explore: account_codes {
  join: classification {
    type: left_outer
    sql_on: ${account_codes.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: admapping {}

explore: allocations {
  join: expense_items {
    type: left_outer
    sql_on: ${allocations.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: archive_database_info {}

explore: assessment {}

explore: assessment_assignment {
  join: assessment {
    type: left_outer
    sql_on: ${assessment_assignment.assessment_id} = ${assessment.id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${assessment_assignment.service_id} = ${services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: assessment_value {
  join: assessment {
    type: left_outer
    sql_on: ${assessment_value.assessment_id} = ${assessment.id} ;;
    relationship: many_to_one
  }
}

explore: asset_charges {

  join: asset_type {
    type: left_outer
    sql_on: ${asset_charges.asset_type_id} = ${asset_type.id} ;;
    relationship: many_to_one
  }

  join: asset_sub_type {
    type: left_outer
    sql_on: ${asset_charges.asset_sub_type_id} = ${asset_sub_type.id} ;;
    relationship: many_to_one
  }

  join: asset_make {
    type: left_outer
    sql_on: ${asset_charges.asset_make_id} = ${asset_make.id} ;;
    relationship: many_to_one
  }

  join: asset_users {
    type: left_outer
    sql_on: ${asset_charges.asset_user_id} = ${asset_users.id} ;;
    relationship: many_to_one
  }

  join: asset_cost_centre {
    type: left_outer
    sql_on: ${asset_charges.asset_cost_centre_id} = ${asset_cost_centre.id} ;;
    relationship: many_to_one
  }






  join: cost_centres {
    type: left_outer
    sql_on: ${asset_users.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: asset_configuration_type {}

explore: asset_cost_centre {
  join: classification {
    type: left_outer
    sql_on: ${asset_cost_centre.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: asset_event {
  join: expense_items {
    type: left_outer
    sql_on: ${asset_event.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}


explore: asset_filter {}

explore: asset_finance {}

explore: asset_lifecycle_reminders {
  join: users {
    type: left_outer
    sql_on: ${asset_lifecycle_reminders.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: asset_make {}



explore: asset_space_type {}

explore: asset_status {}

explore: asset_sub_service {}

explore: asset_sub_type {
  join: asset_type {
    type: left_outer
    sql_on: ${asset_sub_type.asset_type_id} = ${asset_type.id} ;;
    relationship: many_to_one
  }
}

explore: asset_type {}

explore: asset_users {
  join: cost_centres {
    type: left_outer
    sql_on: ${asset_users.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}


explore: audit_field {}

explore: audit_log {}

explore: audit_log_new {}

explore: azure_invoice {}

explore: block {}

explore: bmcintegration_schedule {
  join: sets {
    type: left_outer
    sql_on: ${bmcintegration_schedule.set_id} = ${sets._old_set_id} ;;
    relationship: many_to_one
  }
}

explore: bsbudget_allocations {}

explore: bsbudget_contributors {}

explore: bsto_bsallocations {}

explore: business_service_fcdiff {
  join: services {
    type: left_outer
    sql_on: ${business_service_fcdiff.service_id} = ${services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: capacity_calculations {}

explore: capacity_type {}

explore: capex_category {}

explore: checkpoint {}

explore: checkpoint_data {
  join: checkpoint {
    type: left_outer
    sql_on: ${checkpoint_data.checkpoint_id} = ${checkpoint.id} ;;
    relationship: many_to_one
  }
}

explore: checkpoint_view {}

explore: classification {}

explore: classification_group {}

explore: combined_service {}

explore: combined_service_bs {
  join: combined_service {
    type: left_outer
    sql_on: ${combined_service_bs.combined_service_id} = ${combined_service.id} ;;
    relationship: many_to_one
  }
}

explore: comments_type {}

explore: contract_attribute {}

explore: contract_data {
  join: contract_type {
    type: left_outer
    sql_on: ${contract_data.contract_type_id} = ${contract_type.id} ;;
    relationship: many_to_one
  }
}

explore: contract_event {
  join: expense_items {
    type: left_outer
    sql_on: ${contract_event.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: contract_event_type {}

explore: contract_head_agreement {}

explore: contract_reminders {
  join: users {
    type: left_outer
    sql_on: ${contract_reminders.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: contract_supplier {}

explore: contract_type {}

explore: cost_category {
  join: classification {
    type: left_outer
    sql_on: ${cost_category.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: cost_centre_filter {
  join: cost_centres {
    type: left_outer
    sql_on: ${cost_centre_filter.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${cost_centre_filter.service_id} = ${services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: cost_centres {
  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: csbudget_allocations {}

explore: cubudget_contributors {}

explore: currency {}

explore: currency_conversion {
  join: currency {
    type: left_outer
    sql_on: ${currency_conversion.currency_id} = ${currency.id} ;;
    relationship: many_to_one
  }
}

explore: custom_label_types {}

explore: custom_label_values {}

explore: customer_service_charge {
  join: customer_services {
    type: left_outer
    sql_on: ${customer_service_charge.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: customer_service_charge_fc {
  join: customer_services {
    type: left_outer
    sql_on: ${customer_service_charge_fc.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: customer_services {
  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: customer_unit {
  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: customer_unit_charge {
  join: customer_unit {
    type: left_outer
    sql_on: ${customer_unit_charge.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: customer_unit_charge_fc {
  join: customer_unit {
    type: left_outer
    sql_on: ${customer_unit_charge_fc.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_setting {}

explore: dashboard_setting_data_sources {}

explore: dashboard_setting_link {}

explore: dashboard_setting_link_module {}

explore: dashboard_setting_location {}

explore: dashboard_setting_menu {
  join: dashboard_setting {
    type: left_outer
    sql_on: ${dashboard_setting_menu.dashboard_setting_id} = ${dashboard_setting.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_setting_module {}

explore: dashboard_setting_module_data_sources {
  join: trend_set {
    type: left_outer
    sql_on: ${dashboard_setting_module_data_sources.trend_set_id} = ${trend_set.id} ;;
    relationship: many_to_one
  }

  join: trend_type {
    type: left_outer
    sql_on: ${trend_set.trend_type_id} = ${trend_type.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_setting_module_type {}

explore: dashboard_setting_role {
  join: dashboard_setting {
    type: left_outer
    sql_on: ${dashboard_setting_role.dashboard_setting_id} = ${dashboard_setting.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_setting_symbol {}

explore: dashboard_setting_users {
  join: users {
    type: left_outer
    sql_on: ${dashboard_setting_users.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: data_update_setting {}

explore: data_ware_house_update_log {}

explore: dbcopy_log {}


explore: document_expense {}

explore: documents {}

explore: dw_combined_service_to_service {}

explore: dw_combined_usage_service_summarised {}

explore: dw_service_details {}

explore: dw_technical_service_allocations {}

explore: dw_usage_allocations_current {}

explore: dw_usage_allocations_sub_current {}

explore: dw_usage_details {}

explore: dwlock {}

explore: email_setting {}

explore: exchange_rate {}

explore: exforecast_method {
  join: expense_items {
    type: left_outer
    sql_on: ${exforecast_method.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: exforecast_year_variance {
  join: comments_type {
    type: left_outer
    sql_on: ${exforecast_year_variance.comments_type_id} = ${comments_type.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${exforecast_year_variance.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: exmonthly_variance {
  join: comments_type {
    type: left_outer
    sql_on: ${exmonthly_variance.comments_type_id} = ${comments_type.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${exmonthly_variance.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: expense_assumption {}

explore: expense_budget_allocations {}

explore: expense_forecast {}

explore: expense_items {
  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: export {}

explore: forecast {}

explore: forecast_method {}

explore: frequently_used_exports {
  join: users {
    type: left_outer
    sql_on: ${frequently_used_exports.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: report {
    type: left_outer
    sql_on: ${frequently_used_exports.report_id} = ${report.report_id} ;;
    relationship: many_to_one
  }

  join: export {
    type: left_outer
    sql_on: ${report.export_id} = ${export.id} ;;
    relationship: many_to_one
  }
}

explore: frequently_used_reports {
  join: users {
    type: left_outer
    sql_on: ${frequently_used_reports.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: report {
    type: left_outer
    sql_on: ${frequently_used_reports.report_id} = ${report.report_id} ;;
    relationship: many_to_one
  }

  join: export {
    type: left_outer
    sql_on: ${report.export_id} = ${export.id} ;;
    relationship: many_to_one
  }
}

explore: funding_source {}

explore: funding_source2 {}

explore: funding_source3 {}

explore: growth_capex {
  join: services {
    type: left_outer
    sql_on: ${growth_capex.service_id} = ${services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: import_file {}

explore: import_save {}

explore: import_save_field {}

explore: import_type {}

explore: income_expense {}

explore: income_expense_report {}

explore: invoice_details {}

explore: ittower_ratio {}

explore: job_class {
  join: cost_centres {
    type: left_outer
    sql_on: ${job_class.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: job_class_account_codes {
  join: account_codes {
    type: left_outer
    sql_on: ${job_class_account_codes.account_code_id} = ${account_codes.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${account_codes.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: job_class_allocations {
  join: job_class {
    type: left_outer
    sql_on: ${job_class_allocations.job_class_id} = ${job_class.id} ;;
    relationship: many_to_one
  }

  join: cost_centres {
    type: left_outer
    sql_on: ${job_class.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: job_class_basic_fcs {
  join: job_class {
    type: left_outer
    sql_on: ${job_class_basic_fcs.job_class_id} = ${job_class.id} ;;
    relationship: many_to_one
  }

  join: cost_centres {
    type: left_outer
    sql_on: ${job_class.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: job_class_percentage {}

explore: lock_month_setting_record {}

explore: login_history {
  join: users {
    type: left_outer
    sql_on: ${login_history.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: mappings {
  join: sets {
    type: left_outer
    sql_on: ${mappings.set_id} = ${sets._old_set_id} ;;
    relationship: many_to_one
  }
}

explore: misallocation_error_messages {}

explore: month_list {}

explore: month_locking_log {
  join: users {
    type: left_outer
    sql_on: ${month_locking_log.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: months {}

explore: moved_budget_items {}

explore: object_definition {}

explore: object_locking {}

explore: object_property {}

explore: object_type {}

explore: operating_system {}

explore: options {}

explore: org_metric {}

explore: orginal_vendor_invoice {}



explore: password_history {
  join: users {
    type: left_outer
    sql_on: ${password_history.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_allocation_drivers_scbench {}

explore: qrpt_allocation_drivers_scclass {}


explore: qrpt_bscharge_all {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_all.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bscharge_all_by_csfor_web_bi {
  join: customer_services {
    type: left_outer
    sql_on: ${qrpt_bscharge_all_by_csfor_web_bi.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_all_by_csfor_web_bi.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bscharge_all_for_web_bi {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_all_for_web_bi.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bscharge_all_l3 {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_all_l3.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bscharge_fc {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_fc.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bscharge_fc_l3 {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_fc_l3.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bscharge_fcby_csfor_web_bi {
  join: customer_services {
    type: left_outer
    sql_on: ${qrpt_bscharge_fcby_csfor_web_bi.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_bscharge_fcby_csfor_web_bi.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_bus_service_summary {}

explore: qrpt_business_service_allocation_incl_ccdata {}

explore: qrpt_business_service_allocation_incl_ccmain {}

explore: qrpt_business_service_summary_output {}

explore: qrpt_business_service_summary_output_incl_cc {}

explore: qrpt_business_service_summary_output_include_no_cost {}

explore: qrpt_cc_class_cu2 {}

explore: qrpt_cc_class_cu2_new {}

explore: qrpt_cc_class_cu2_new_l3_bs_cu {}

explore: qrpt_cc_class_cu3 {}

explore: qrpt_cc_class_cu3_new {}

explore: qrpt_cc_class_cu3_new_l3_bs_cu {}

explore: qrpt_cc_class_cu_class2 {}

explore: qrpt_cc_class_cu_class2_l3_bs_cu {}

explore: qrpt_cc_class_cu_class3 {}

explore: qrpt_cc_class_cu_class3_l3_bs_cu {}

explore: qrpt_cc_class_cu_group2 {}

explore: qrpt_cc_class_cu_group2_l3_bs_cu {}

explore: qrpt_cc_class_cu_group3 {}

explore: qrpt_cc_class_cu_group3_l3_bs_cu {}

explore: qrpt_cc_cu1 {}

explore: qrpt_cc_cu1_l3_bs_cs {}

explore: qrpt_cc_cu1_l3_bs_cu {}

explore: qrpt_cc_cu2 {}

explore: qrpt_cc_cu2_funding {}

explore: qrpt_cc_cu2_funding_l3_bs_cs {}

explore: qrpt_cc_cu2_l3_bs_cs {}

explore: qrpt_cc_cu2_l3_bs_cu {}

explore: qrpt_cc_cu3 {}

explore: qrpt_cc_cu3_group {}

explore: qrpt_cc_cu3_group_new {}

explore: qrpt_cc_cu3_group_new_l3_bs_cu {}

explore: qrpt_cc_cu3_l3_bs_cs {}

explore: qrpt_cc_cu3_l3_bs_cu {}

explore: qrpt_cc_cu_class2 {}

explore: qrpt_cc_cu_class2_l3_bs_cu {}

explore: qrpt_cc_cu_class3 {}

explore: qrpt_cc_cu_class3_l3_bs_cu {}

explore: qrpt_cc_cu_group2 {}

explore: qrpt_cc_cu_group2_l3_bs_cu {}

explore: qrpt_cc_cu_group3 {}

explore: qrpt_cc_cu_group3_l3_bs_cu {}

explore: qrpt_cc_group_cu_class2 {}

explore: qrpt_cc_group_cu_class2_l3_bs_cu {}

explore: qrpt_cc_group_cu_group2 {}

explore: qrpt_cc_group_cu_group2_l3_bs_cu {}

explore: qrpt_charge_comparision {}

explore: qrpt_charge_comparision_cuids {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_charge_comparision_cuids.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_charge_comparision_l3 {}

explore: qrpt_cost_centre_group_summary {}

explore: qrpt_cost_centre_group_summary_by_fy {}

explore: qrpt_cost_centre_summary {}

explore: qrpt_cost_centre_summary_by_fy {}

explore: qrpt_cscharge_all_for_web_bi {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_cscharge_all_for_web_bi.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_cscharge_fcfor_web_bi {
  join: customer_unit {
    type: left_outer
    sql_on: ${qrpt_cscharge_fcfor_web_bi.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qrpt_cuby_cc {}

explore: qrpt_cuby_cc_l3 {}

explore: qrpt_cuby_ccclass {}

explore: qrpt_cuby_ccclass_l3 {}

explore: qrpt_cuby_ccgroup {}

explore: qrpt_cuby_ccgroup2 {}

explore: qrpt_cuby_ccgroup2_l3 {}

explore: qrpt_cuby_ccgroup_l3 {}

explore: qrpt_customer_service_rate_include_no_gross {}

explore: qrpt_customer_service_summary_output {}

explore: qrpt_customer_service_summary_output_incl_cc {}

explore: qrpt_customer_service_summary_output_incl_ccnew {}

explore: qrpt_customer_service_summary_output_include_no_cost {}

explore: qrpt_customer_service_summary_output_include_no_cost_new {}

explore: qrpt_funding_source1by_cc_class_l3 {}

explore: qrpt_funding_source1by_cc_group_l3 {}

explore: qrpt_funding_source1by_cc_l3 {}

explore: qrpt_funding_source3by_cc {}

explore: qrpt_funding_source3by_ccclass {}

explore: qrpt_recovery_variance {}

explore: qrpt_service_component_summary_by_business_service {}

explore: qrpt_tech_service_misallocation {}

explore: qrpt_unit_rates_check {}

explore: qry_acc_code_job_class_rpt {}

explore: qry_acc_code_job_class_rpt_forecast_year {}

explore: qry_acc_code_rpta {}

explore: qry_acc_code_rpta_by_fy {}

explore: qry_acc_code_rpta_forecast_year {}

explore: qry_acc_code_rptb {}

explore: qry_acc_code_rptb_by_fy {}

explore: qry_acc_code_rptb_forecast_year {}

explore: qry_allowed_cc {}

explore: qry_allowed_ccuser {}

explore: qry_asset_count {}

explore: qry_asset_service_allocations_string {}

explore: qry_asset_service_allocations_string_cu {}

explore: qry_asset_service_allocations_string_new {}

explore: qry_bs_by_cu_by_period_detail {}

explore: qry_bsand_racharge {}

explore: qry_bscharge {
  join: customer_unit {
    type: left_outer
    sql_on: ${qry_bscharge.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: qry_bsclass_by_cudetail_rate_total {
  join: classification {
    type: left_outer
    sql_on: ${qry_bsclass_by_cudetail_rate_total.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: qry_bsclass_for_cc {}

explore: qry_business_service_allocation {}

explore: qry_business_service_charges_by_month {}

explore: qry_business_service_charges_by_month_for_l3 {}

explore: qry_business_service_summary {}

explore: qry_business_service_summary_incl_cc {}

explore: qry_business_service_summary_include_no_cost {}

explore: qry_cc_class_service_alloc {}

explore: qry_cc_classification_not_null {}

explore: qry_cc_group2_service_alloc {}

explore: qry_cc_group_service_alloc {}

explore: qry_cc_service_alloc {}

explore: qry_cc_service_alloc_class {}

explore: qry_classification_string_id {}

explore: qry_combined_service_bsmin_unit {}

explore: qry_cs_by_cu_budget_comparison {}

explore: qry_cs_by_cu_by_period_detail {}

explore: qry_csheadcount_with_unit_type {}

explore: qry_cugroup_by_ccclass {}

explore: qry_curate_by_cutype {}

explore: qry_customer_service_charges_by_month {}

explore: qry_customer_service_charges_by_month_include_no_cost {}

explore: qry_customer_service_summary {}

explore: qry_customer_service_summary_incl_cc {}

explore: qry_customer_service_summary_include_no_cost {}

explore: qry_customer_service_with_unit_type {}

explore: qry_ex_capex_fte_summary {}

explore: qry_expense_item_output_sapcapex {}

explore: qry_expense_item_output_sapexpense {}

explore: qry_expense_items_full_access {}

explore: qry_expense_items_restricted {}

explore: qry_fte {}

explore: qry_headcount_by_business_service {}

explore: qry_headcount_by_customer_service {}

explore: qry_metric_fte {}

explore: qry_misallocations_by_tech_service {}

explore: qry_scwith_expenses {}

explore: qry_service_with_unit_type {}

explore: qry_sync_expense_monthly_allocations {
  join: allocations {
    type: left_outer
    sql_on: ${qry_sync_expense_monthly_allocations.allocation_id} = ${allocations.id} ;;
    relationship: many_to_one
  }

  join: expense_items {
    type: left_outer
    sql_on: ${allocations.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: qry_tech_service_allocation_summary {}

explore: quni_expense_items_security {}

explore: reallocation_charge {
  join: customer_unit {
    type: left_outer
    sql_on: ${reallocation_charge.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: reallocation_sets {}

explore: reallocations {
  join: sets {
    type: left_outer
    sql_on: ${reallocations.set_id} = ${sets._old_set_id} ;;
    relationship: many_to_one
  }
}

explore: report {
  join: export {
    type: left_outer
    sql_on: ${report.export_id} = ${export.id} ;;
    relationship: many_to_one
  }
}

explore: report1 {}

explore: report1_a {}

explore: report2 {}

explore: report2_a {}

explore: report2_class {}

explore: report3 {}

explore: report3_a {}

explore: report3_l3_bs_cs {}

explore: report3_l3_bs_cu {}

explore: report4 {}

explore: report4_class {}

explore: report4_group {}

explore: rigrid {}

explore: scbudget_allocations {}

explore: scbudget_contributors {}

explore: scmetric_counts {}

explore: scto_scallocations {}

explore: search_fields {}

explore: service_comp_fcdiff {
  join: services {
    type: left_outer
    sql_on: ${service_comp_fcdiff.service_id} = ${services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: services {
  join: classification {
    type: left_outer
    sql_on: ${services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}



explore: sqlrd_business_service_unit_summary_by_month1 {}

explore: sqlrd_business_service_unit_summary_by_month2 {}

explore: summary_charts {
  join: report {
    type: left_outer
    sql_on: ${summary_charts.report_id} = ${report.report_id} ;;
    relationship: many_to_one
  }

  join: export {
    type: left_outer
    sql_on: ${report.export_id} = ${export.id} ;;
    relationship: many_to_one
  }
}

explore: t_sql_version {}

explore: task_allocation {}

explore: task_metadata {}

explore: task_package {}

explore: task_package_monthly_detail {}

explore: team {}

explore: team_filter {
  join: team {
    type: left_outer
    sql_on: ${team_filter.team_id} = ${team.id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${team_filter.service_id} = ${services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: team_member {
  join: team {
    type: left_outer
    sql_on: ${team_member.team_id} = ${team.id} ;;
    relationship: many_to_one
  }
}

explore: test_cloud_consumption {}

explore: tolerance {}

explore: tolereance {}

explore: trend_set {
  join: trend_type {
    type: left_outer
    sql_on: ${trend_set.trend_type_id} = ${trend_type.id} ;;
    relationship: many_to_one
  }
}

explore: trend_snap_shot {}

explore: trend_type {}

explore: unit_type {}

explore: usage_set {
  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: usage_set_bs {}

explore: usage_set_bscharges {
  join: customer_services {
    type: left_outer
    sql_on: ${usage_set_bscharges.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: usage_set_bs {
    type: left_outer
    sql_on: ${usage_set_bscharges.usage_set_bsid} = ${usage_set_bs.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: usage_set_charges {
  join: customer_unit {
    type: left_outer
    sql_on: ${usage_set_charges.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${usage_set_charges.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: usageset_charge_addetail {
  join: customer_unit {
    type: left_outer
    sql_on: ${usageset_charge_addetail.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: user_account_code_access {
  join: users {
    type: left_outer
    sql_on: ${user_account_code_access.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: account_codes {
    type: left_outer
    sql_on: ${user_account_code_access.account_code_id} = ${account_codes.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${account_codes.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: user_activity {
  join: users {
    type: left_outer
    sql_on: ${user_activity.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_cost_centre_access {
  join: users {
    type: left_outer
    sql_on: ${user_cost_centre_access.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: cost_centres {
    type: left_outer
    sql_on: ${user_cost_centre_access.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: user_customer_unit_access {
  join: users {
    type: left_outer
    sql_on: ${user_customer_unit_access.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: customer_unit {
    type: left_outer
    sql_on: ${user_customer_unit_access.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: user_function_permissions {}

explore: user_functions {}

explore: user_security {
  join: users {
    type: left_outer
    sql_on: ${user_security.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_session {
  join: users {
    type: left_outer
    sql_on: ${user_session.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_task_execute_log {
  join: users {
    type: left_outer
    sql_on: ${user_task_execute_log.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_task_monthly_state {
  join: users {
    type: left_outer
    sql_on: ${user_task_monthly_state.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_task_package_allocation {
  join: users {
    type: left_outer
    sql_on: ${user_task_package_allocation.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_type {}

explore: users {}

explore: v_account_code {
  join: classification {
    type: left_outer
    sql_on: ${v_account_code.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_business_service {
  join: classification {
    type: left_outer
    sql_on: ${v_business_service.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${v_business_service.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_business_service_monthly_charge {}

explore: v_business_service_monthly_cost {}

explore: v_business_service_monthly_cost_detail {}

explore: v_business_service_monthly_cost_detail_budget {}

explore: v_business_service_monthly_cost_with_no_expense {}

explore: v_business_service_monthly_fte_detail {}

explore: v_business_service_monthly_fte_detail_budget {}

explore: v_cloud_comsumption {}

explore: v_cloud_comsumption1 {}

explore: v_cloud_comsumption_month {}

explore: v_cloud_comsumption_month_asset_type {}

explore: v_contract_data {
  join: contract_type {
    type: left_outer
    sql_on: ${v_contract_data.contract_type_id} = ${contract_type.id} ;;
    relationship: many_to_one
  }
}

explore: v_contract_exp6_months {}

explore: v_contract_exposure {}

explore: v_contract_ratio_by_ittower {}

explore: v_contract_ratio_by_supplier {}

explore: v_contract_type_trends {}

explore: v_cost_category {
  join: classification {
    type: left_outer
    sql_on: ${v_cost_category.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_cost_centre {
  join: classification {
    type: left_outer
    sql_on: ${v_cost_centre.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_cost_centre_monthly_cost {}

explore: v_cost_per_claim {}

explore: v_cost_per_customer {}

explore: v_cost_per_staff {}

explore: v_csexproportion_actual {}

explore: v_csexproportion_actual_detail {}

explore: v_csexproportion_budget {}

explore: v_csexproportion_budget_detail {}

explore: v_custom_data_source_cloud_actual_cy {}

explore: v_custom_data_source_cloud_actual_ytd {}

explore: v_custom_data_source_cloud_budget_cy {}

explore: v_custom_data_source_cloud_budget_ytd {}

explore: v_custom_data_source_contract_ratio_outsourced_service_trend {}

explore: v_custom_data_source_contract_trend {}

explore: v_custom_data_source_cpexactual_cy {}

explore: v_custom_data_source_cpexactual_ytd {}

explore: v_custom_data_source_cpexbudget_cy {}

explore: v_custom_data_source_cpexbudget_ytd {}

explore: v_custom_data_source_csgroup1_budget_comp {}

explore: v_custom_data_source_cucharges_per_top5 {}

explore: v_custom_data_source_empty_cell {}

explore: v_custom_data_source_opexactual_cy {}

explore: v_custom_data_source_opexactual_ytd {}

explore: v_custom_data_source_opexactualsby_cost_category_trend {}

explore: v_custom_data_source_opexbudget_cy {}

explore: v_custom_data_source_opexbudget_ytd {}

explore: v_custom_data_source_opexbudgetby_cost_category_trend {}

explore: v_custom_data_source_scgroup2_budget_comp {}

explore: v_custom_data_source_scgroup_by_costcategory {}

explore: v_custom_data_source_staffactual_cy {}

explore: v_custom_data_source_staffactual_ytd {}

explore: v_custom_data_source_staffbudget_cy {}

explore: v_custom_data_source_staffbudget_ytd {}

explore: v_custom_data_source_vendor_spend_comp {}

explore: v_custom_label {}

explore: v_customer_service {
  join: classification {
    type: left_outer
    sql_on: ${v_customer_service.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${v_customer_service.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_service_monthly_base_cost {}

explore: v_customer_service_monthly_base_cost_actual {}

explore: v_customer_service_monthly_base_cost_budget {}

explore: v_customer_service_monthly_base_cost_by_ccgroup {}

explore: v_customer_service_monthly_base_cost_detail {}

explore: v_customer_service_monthly_base_cost_detail_budget {}

explore: v_customer_service_monthly_base_cost_with_transfer {
  join: customer_services {
    type: left_outer
    sql_on: ${v_customer_service_monthly_base_cost_with_transfer.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_service_monthly_base_fte_detail {}

explore: v_customer_service_monthly_base_fte_detail_budget {}

explore: v_customer_service_monthly_charge {
  join: customer_services {
    type: left_outer
    sql_on: ${v_customer_service_monthly_charge.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_service_monthly_cost {
  join: customer_services {
    type: left_outer
    sql_on: ${v_customer_service_monthly_cost.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_service_monthly_cost_with_no_expense {
  join: customer_services {
    type: left_outer
    sql_on: ${v_customer_service_monthly_cost_with_no_expense.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_unit {
  join: classification {
    type: left_outer
    sql_on: ${v_customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${v_customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_unit_base_cost_detail_4 {}

explore: v_customer_unit_base_cost_detail_budget_4 {}

explore: v_customer_unit_base_fte_detail_4 {}

explore: v_customer_unit_base_fte_detail_5 {}

explore: v_customer_unit_charge {}

explore: v_customer_unit_charge_4 {}

explore: v_customer_unit_charge_detail_4 {
  join: customer_unit {
    type: left_outer
    sql_on: ${v_customer_unit_charge_detail_4.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_unit.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_unit_charge_detail_5 {
  join: customer_services {
    type: left_outer
    sql_on: ${v_customer_unit_charge_detail_5.customer_service_id} = ${customer_services.id} ;;
    relationship: many_to_one
  }

  join: customer_unit {
    type: left_outer
    sql_on: ${v_customer_unit_charge_detail_5.customer_unit_id} = ${customer_unit.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${customer_services.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${customer_services.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }

  join: reallocation_sets {
    type: left_outer
    sql_on: ${customer_unit.reallocation_set_id} = ${reallocation_sets.id} ;;
    relationship: many_to_one
  }
}

explore: v_customer_unit_monthly_base_cost_detail {}

explore: v_customer_unit_monthly_base_cost_detail_budget {}

explore: v_customer_unit_monthly_base_fte_detail {}

explore: v_customer_unit_monthly_base_fte_detail_budget {}

explore: v_ex_cc_ac {
  join: expense_assumption {
    type: left_outer
    sql_on: ${v_ex_cc_ac.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${v_ex_cc_ac.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: v_expense_amount {}

explore: v_expense_amount_fy {}

explore: v_expense_item {
  join: expense_assumption {
    type: left_outer
    sql_on: ${v_expense_item.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${v_expense_item.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }

  join: cost_centres {
    type: left_outer
    sql_on: ${v_expense_item.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: account_codes {
    type: left_outer
    sql_on: ${v_expense_item.account_code_id} = ${account_codes.id} ;;
    relationship: many_to_one
  }

  join: cost_category {
    type: left_outer
    sql_on: ${v_expense_item.cost_category_id} = ${cost_category.id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${v_expense_item.team_id} = ${team.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_exscallocation {
  join: expense_items {
    type: left_outer
    sql_on: ${v_exscallocation.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: v_fte {}

explore: v_grow_ratio {}

explore: v_grow_ratio_trg {}

explore: v_hide_salaries {
  join: users {
    type: left_outer
    sql_on: ${v_hide_salaries.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: v_itstats {}

explore: v_market_comp {}

explore: v_monthly_actuals {}

explore: v_monthly_budget {}

explore: v_monthly_variance_by_cost_category {}

explore: v_monthly_variance_by_cost_centre {}

explore: v_org_matricby_value_app_count {}

explore: v_org_matricby_value_org_revenue {}

explore: v_org_matricby_value_org_staff {}

explore: v_pam_business_service_basic {
  join: classification {
    type: left_outer
    sql_on: ${v_pam_business_service_basic.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_pam_business_service_units {}

explore: v_pam_customer_service_basic {
  join: classification {
    type: left_outer
    sql_on: ${v_pam_customer_service_basic.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_run_ratio {}

explore: v_run_ratio_trg {}

explore: v_scbsallocation {
  join: expense_items {
    type: left_outer
    sql_on: ${v_scbsallocation.expense_item_id} = ${expense_items.id} ;;
    relationship: many_to_one
  }

  join: expense_assumption {
    type: left_outer
    sql_on: ${expense_items.expense_assumption_id} = ${expense_assumption.id} ;;
    relationship: many_to_one
  }

  join: exchange_rate {
    type: left_outer
    sql_on: ${expense_items.exchange_rate_id} = ${exchange_rate.id} ;;
    relationship: many_to_one
  }
}

explore: v_security_cost_per_fte {}

explore: v_service_component {
  join: classification {
    type: left_outer
    sql_on: ${v_service_component.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }

  join: usage_set {
    type: left_outer
    sql_on: ${v_service_component.usage_set_id} = ${usage_set.id} ;;
    relationship: many_to_one
  }

  join: admapping {
    type: left_outer
    sql_on: ${usage_set.admapping_id} = ${admapping.id} ;;
    relationship: many_to_one
  }
}

explore: v_service_component_monthly_cost_detail {}

explore: v_service_component_monthly_cost_detail_budget {}

explore: v_service_component_monthly_fte_detail {}

explore: v_service_component_monthly_fte_detail_budget {}

explore: v_top5_business_service {}

explore: v_top5_business_service_unit {}

explore: v_top5_business_unit_charges {}

explore: v_top5_business_units {}

explore: v_top5_contract_spend {}

explore: v_top5_custom_service {}

explore: v_top5_customer_unit_charges {}

explore: v_top5_org_matricby_value {}

explore: v_transform_ratio {}

explore: v_transform_ratio_trg {}

explore: v_unit_type {}

explore: v_user_account_code {
  join: users {
    type: left_outer
    sql_on: ${v_user_account_code.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: account_codes {
    type: left_outer
    sql_on: ${v_user_account_code.account_code_id} = ${account_codes.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${account_codes.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_user_cost_centre {
  join: users {
    type: left_outer
    sql_on: ${v_user_cost_centre.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }

  join: cost_centres {
    type: left_outer
    sql_on: ${v_user_cost_centre.cost_centre_id} = ${cost_centres.id} ;;
    relationship: many_to_one
  }

  join: classification {
    type: left_outer
    sql_on: ${cost_centres.classification_id} = ${classification.id} ;;
    relationship: many_to_one
  }
}

explore: v_user_customer_unit {
  join: users {
    type: left_outer
    sql_on: ${v_user_customer_unit.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: v_user_expense_item {
  join: users {
    type: left_outer
    sql_on: ${v_user_expense_item.user_id} = ${users.oauth_user_id} ;;
    relationship: many_to_one
  }
}

explore: v_variance_by_cost_category {}



explore: vendor {}



explore: vendor_invoice {}



explore: vendor_invoice_import_log {}

explore: vendor_service_alignment {
  join: vendor {
    type: left_outer
    sql_on: ${vendor_service_alignment.vendor_id} = ${vendor.id} ;;
    relationship: many_to_one
  }

  join: asset_type {
    type: left_outer
    sql_on: ${vendor_service_alignment.asset_type_id} = ${asset_type.id} ;;
    relationship: many_to_one
  }

  join: asset_sub_type {
    type: left_outer
    sql_on: ${vendor_service_alignment.asset_sub_type_id} = ${asset_sub_type.id} ;;
    relationship: many_to_one
  }
}

explore: year_list {}
