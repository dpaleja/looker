view: tolerance {
  sql_table_name: dbo.Tolerance ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: amber_value {
    type: number
    sql: ${TABLE}.AmberValue ;;
  }

  dimension: balance_value {
    type: number
    sql: ${TABLE}.BalanceValue ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: near_balance_value {
    type: number
    sql: ${TABLE}.NearBalanceValue ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
