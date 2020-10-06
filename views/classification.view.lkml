view: classification {
  sql_table_name: dbo.Classification ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: charge_bpercent_override {
    type: number
    sql: ${TABLE}.ChargeBPercentOverride ;;
  }

  dimension: charge_percent_override {
    type: number
    sql: ${TABLE}.ChargePercentOverride ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sort_key {
    type: string
    sql: ${TABLE}.SortKey ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
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
      account_codes.count,
      asset_cost_centre.count,
      cost_category.count,
      cost_centres.count,
      customer_services.count,
      customer_unit.count,
      qry_bsclass_by_cudetail_rate_total.count,
      services.count,
      v_account_code.count,
      v_business_service.count,
      v_cost_category.count,
      v_cost_centre.count,
      v_customer_service.count,
      v_customer_unit.count,
      v_pam_business_service_basic.count,
      v_pam_customer_service_basic.count,
      v_service_component.count
    ]
  }
}
