view: qry_bscharge {
  sql_table_name: dbo.qryBSCharge ;;
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

  dimension: amount_override {
    type: number
    sql: ${TABLE}.AmountOverride ;;
  }

  dimension: bamount_override {
    type: number
    sql: ${TABLE}.BAmountOverride ;;
  }

  dimension: bdriver_count {
    type: number
    sql: ${TABLE}.BDriverCount ;;
  }

  dimension: bmonth1 {
    type: number
    sql: ${TABLE}.BMonth1 ;;
  }

  dimension: bmonth10 {
    type: number
    sql: ${TABLE}.BMonth10 ;;
  }

  dimension: bmonth11 {
    type: number
    sql: ${TABLE}.BMonth11 ;;
  }

  dimension: bmonth12 {
    type: number
    sql: ${TABLE}.BMonth12 ;;
  }

  dimension: bmonth2 {
    type: number
    sql: ${TABLE}.BMonth2 ;;
  }

  dimension: bmonth3 {
    type: number
    sql: ${TABLE}.BMonth3 ;;
  }

  dimension: bmonth4 {
    type: number
    sql: ${TABLE}.BMonth4 ;;
  }

  dimension: bmonth5 {
    type: number
    sql: ${TABLE}.BMonth5 ;;
  }

  dimension: bmonth6 {
    type: number
    sql: ${TABLE}.BMonth6 ;;
  }

  dimension: bmonth7 {
    type: number
    sql: ${TABLE}.BMonth7 ;;
  }

  dimension: bmonth8 {
    type: number
    sql: ${TABLE}.BMonth8 ;;
  }

  dimension: bmonth9 {
    type: number
    sql: ${TABLE}.BMonth9 ;;
  }

  dimension: bpercent_override {
    type: number
    sql: ${TABLE}.BPercentOverride ;;
  }

  dimension: budget_flag {
    type: string
    sql: ${TABLE}.BudgetFlag ;;
  }

  dimension: bunit_count {
    type: number
    sql: ${TABLE}.BUnitCount ;;
  }

  dimension: business_service_id {
    type: number
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: charge_bpercent_override {
    type: number
    sql: ${TABLE}.ChargeBPercentOverride ;;
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

  dimension: cutype {
    type: string
    sql: ${TABLE}.CUType ;;
  }

  dimension: driver_count {
    type: number
    sql: ${TABLE}.DriverCount ;;
  }

  dimension: dummy_cuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DummyCUID ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
  }

  dimension: month1 {
    type: number
    sql: ${TABLE}.Month1 ;;
  }

  dimension: month10 {
    type: number
    sql: ${TABLE}.Month10 ;;
  }

  dimension: month11 {
    type: number
    sql: ${TABLE}.Month11 ;;
  }

  dimension: month12 {
    type: number
    sql: ${TABLE}.Month12 ;;
  }

  dimension: month2 {
    type: number
    sql: ${TABLE}.Month2 ;;
  }

  dimension: month3 {
    type: number
    sql: ${TABLE}.Month3 ;;
  }

  dimension: month4 {
    type: number
    sql: ${TABLE}.Month4 ;;
  }

  dimension: month5 {
    type: number
    sql: ${TABLE}.Month5 ;;
  }

  dimension: month6 {
    type: number
    sql: ${TABLE}.Month6 ;;
  }

  dimension: month7 {
    type: number
    sql: ${TABLE}.Month7 ;;
  }

  dimension: month8 {
    type: number
    sql: ${TABLE}.Month8 ;;
  }

  dimension: month9 {
    type: number
    sql: ${TABLE}.Month9 ;;
  }

  dimension: percent_override {
    type: number
    sql: ${TABLE}.PercentOverride ;;
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

  dimension: unit_count {
    type: number
    sql: ${TABLE}.UnitCount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_unit.id, customer_unit.name]
  }
}
