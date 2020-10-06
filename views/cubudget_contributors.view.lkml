view: cubudget_contributors {
  sql_table_name: dbo.CUBudgetContributors ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bsclass {
    type: string
    sql: ${TABLE}.BSClass ;;
  }

  dimension: bsname {
    type: string
    sql: ${TABLE}.BSName ;;
  }

  dimension: charge {
    type: string
    sql: ${TABLE}.Charge ;;
  }

  dimension: cucode {
    type: string
    sql: ${TABLE}.CUCode ;;
  }

  dimension: driver_count {
    type: string
    sql: ${TABLE}.DriverCount ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
  }

  dimension: override {
    type: string
    sql: ${TABLE}.Override ;;
  }

  dimension: percent {
    type: string
    sql: ${TABLE}."Percent" ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.Units ;;
  }

  measure: count {
    type: count
    drill_fields: [id, bsname]
  }
}
