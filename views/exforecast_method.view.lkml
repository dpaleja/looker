view: exforecast_method {
  sql_table_name: dbo.EXForecastMethod ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: default_increment {
    type: number
    sql: ${TABLE}.DefaultIncrement ;;
  }

  dimension: expense_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExpenseItemID ;;
  }

  dimension: is_copy {
    type: string
    sql: ${TABLE}.IsCopy ;;
  }

  dimension: is_include_other_index {
    type: string
    sql: ${TABLE}.IsIncludeOtherIndex ;;
  }

  dimension: is_include_staff_index {
    type: string
    sql: ${TABLE}.IsIncludeStaffIndex ;;
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

  dimension: month11_amount {
    type: number
    sql: ${TABLE}.Month11Amount ;;
  }

  dimension: month11_amount_capex {
    type: number
    sql: ${TABLE}.Month11AmountCapex ;;
  }

  dimension: month12_amount {
    type: number
    sql: ${TABLE}.Month12Amount ;;
  }

  dimension: month12_amount_capex {
    type: number
    sql: ${TABLE}.Month12AmountCapex ;;
  }

  dimension: month1_amount {
    type: number
    sql: ${TABLE}.Month1Amount ;;
  }

  dimension: month1_amount_capex {
    type: number
    sql: ${TABLE}.Month1AmountCapex ;;
  }

  dimension: month2_amount {
    type: number
    sql: ${TABLE}.Month2Amount ;;
  }

  dimension: month2_amount_capex {
    type: number
    sql: ${TABLE}.Month2AmountCapex ;;
  }

  dimension: month3_amount {
    type: number
    sql: ${TABLE}.Month3Amount ;;
  }

  dimension: month3_amount_capex {
    type: number
    sql: ${TABLE}.Month3AmountCapex ;;
  }

  dimension: month4_amount {
    type: number
    sql: ${TABLE}.Month4Amount ;;
  }

  dimension: month4_amount_capex {
    type: number
    sql: ${TABLE}.Month4AmountCapex ;;
  }

  dimension: month5_amount {
    type: number
    sql: ${TABLE}.Month5Amount ;;
  }

  dimension: month5_amount_capex {
    type: number
    sql: ${TABLE}.Month5AmountCapex ;;
  }

  dimension: month6_amount {
    type: number
    sql: ${TABLE}.Month6Amount ;;
  }

  dimension: month6_amount_capex {
    type: number
    sql: ${TABLE}.Month6AmountCapex ;;
  }

  dimension: month7_amount {
    type: number
    sql: ${TABLE}.Month7Amount ;;
  }

  dimension: month7_amount_capex {
    type: number
    sql: ${TABLE}.Month7AmountCapex ;;
  }

  dimension: month8_amount {
    type: number
    sql: ${TABLE}.Month8Amount ;;
  }

  dimension: month8_amount_capex {
    type: number
    sql: ${TABLE}.Month8AmountCapex ;;
  }

  dimension: month9_amount {
    type: number
    sql: ${TABLE}.Month9Amount ;;
  }

  dimension: month9_amount_capex {
    type: number
    sql: ${TABLE}.Month9AmountCapex ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id, expense_items.id, expense_items.name]
  }
}
