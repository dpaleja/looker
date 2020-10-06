view: customer_unit_charge_fc {
  sql_table_name: dbo.CustomerUnitChargeFC ;;
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

  dimension: business_service_id {
    type: number
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: charge_percent_override {
    type: number
    sql: ${TABLE}.ChargePercentOverride ;;
  }

  dimension: customer_unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerUnitID ;;
  }

  dimension: driver_count {
    type: number
    sql: ${TABLE}.DriverCount ;;
  }

  dimension: fcamount_override {
    type: number
    sql: ${TABLE}.FCAmountOverride ;;
  }

  dimension: fcfunding_source {
    type: string
    sql: ${TABLE}.FCFundingSource ;;
  }

  dimension: fcmonth1 {
    type: number
    sql: ${TABLE}.FCMonth1 ;;
  }

  dimension: fcmonth10 {
    type: number
    sql: ${TABLE}.FCMonth10 ;;
  }

  dimension: fcmonth11 {
    type: number
    sql: ${TABLE}.FCMonth11 ;;
  }

  dimension: fcmonth12 {
    type: number
    sql: ${TABLE}.FCMonth12 ;;
  }

  dimension: fcmonth2 {
    type: number
    sql: ${TABLE}.FCMonth2 ;;
  }

  dimension: fcmonth3 {
    type: number
    sql: ${TABLE}.FCMonth3 ;;
  }

  dimension: fcmonth4 {
    type: number
    sql: ${TABLE}.FCMonth4 ;;
  }

  dimension: fcmonth5 {
    type: number
    sql: ${TABLE}.FCMonth5 ;;
  }

  dimension: fcmonth6 {
    type: number
    sql: ${TABLE}.FCMonth6 ;;
  }

  dimension: fcmonth7 {
    type: number
    sql: ${TABLE}.FCMonth7 ;;
  }

  dimension: fcmonth8 {
    type: number
    sql: ${TABLE}.FCMonth8 ;;
  }

  dimension: fcmonth9 {
    type: number
    sql: ${TABLE}.FCMonth9 ;;
  }

  dimension: fcpercent_override {
    type: number
    sql: ${TABLE}.FCPercentOverride ;;
  }

  dimension: fcunit_count {
    type: number
    sql: ${TABLE}.FCUnitCount ;;
  }

  dimension: is_copy {
    type: string
    sql: ${TABLE}.IsCopy ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_unit.id, customer_unit.name]
  }
}
