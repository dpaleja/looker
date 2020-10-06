view: qrpt_unit_rates_check {
  sql_table_name: dbo.qrptUnitRatesCheck ;;

  dimension: cs {
    type: string
    sql: ${TABLE}.CS ;;
  }

  dimension: cu {
    type: string
    sql: ${TABLE}.CU ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.Rate ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
