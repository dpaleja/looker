view: classification_group {
  sql_table_name: dbo.ClassificationGroup ;;
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

  dimension: classification_type {
    type: number
    sql: ${TABLE}.ClassificationType ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
