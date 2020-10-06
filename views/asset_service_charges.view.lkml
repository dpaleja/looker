view: asset_service_charges {
  sql_table_name: dbo.AssetServiceCharges ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: asset_cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetCostCentreID ;;
  }

  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetID ;;
  }

  dimension: asset_make_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetMakeID ;;
  }

  dimension: asset_model {
    type: string
    sql: ${TABLE}.AssetModel ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.AssetName ;;
  }

  dimension: asset_sub_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetSubTypeID ;;
  }

  dimension: asset_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetTypeID ;;
  }

  dimension: asset_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetUserID ;;
  }

  dimension: bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BSID ;;
  }

  dimension: charge_month1 {
    type: number
    sql: ${TABLE}.ChargeMonth1 ;;
  }

  dimension: charge_month10 {
    type: number
    sql: ${TABLE}.ChargeMonth10 ;;
  }

  dimension: charge_month11 {
    type: number
    sql: ${TABLE}.ChargeMonth11 ;;
  }

  dimension: charge_month12 {
    type: number
    sql: ${TABLE}.ChargeMonth12 ;;
  }

  dimension: charge_month2 {
    type: number
    sql: ${TABLE}.ChargeMonth2 ;;
  }

  dimension: charge_month3 {
    type: number
    sql: ${TABLE}.ChargeMonth3 ;;
  }

  dimension: charge_month4 {
    type: number
    sql: ${TABLE}.ChargeMonth4 ;;
  }

  dimension: charge_month5 {
    type: number
    sql: ${TABLE}.ChargeMonth5 ;;
  }

  dimension: charge_month6 {
    type: number
    sql: ${TABLE}.ChargeMonth6 ;;
  }

  dimension: charge_month7 {
    type: number
    sql: ${TABLE}.ChargeMonth7 ;;
  }

  dimension: charge_month8 {
    type: number
    sql: ${TABLE}.ChargeMonth8 ;;
  }

  dimension: charge_month9 {
    type: number
    sql: ${TABLE}.ChargeMonth9 ;;
  }

  dimension: charge_type_id {
    type: number
    sql: ${TABLE}.ChargeTypeID ;;
  }

  dimension: cucost_centre_id {
    type: string
    sql: ${TABLE}.CUCostCentreID ;;
  }

  dimension_group: financial_year {
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
    sql: ${TABLE}.FinancialYear ;;
  }

  dimension: is_linked_expense {
    type: string
    sql: ${TABLE}.IsLinkedExpense ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      asset_name,
      assets._old_asset_id,
      assets.asset_name,
      asset_type.id,
      asset_type.name,
      asset_sub_type.id,
      asset_sub_type.name,
      asset_make.id,
      asset_make.name,
      asset_users.id,
      asset_users.name,
      asset_cost_centre.id,
      asset_cost_centre.name
    ]
  }
}
