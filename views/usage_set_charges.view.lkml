view: usage_set_charges {
  sql_table_name: dbo.UsageSetCharges ;;
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

  dimension: customer_unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerUnitID ;;
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

  dimension: usage_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UsageSetID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_unit.id, customer_unit.name, usage_set.id, usage_set.name]
  }
}
