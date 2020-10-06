view: usageset_charge_addetail {
  sql_table_name: dbo.UsagesetChargeADDetail ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: customer_unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerUnitID ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: usaget_set_id {
    type: number
    sql: ${TABLE}.UsagetSetID ;;
  }

  dimension: user_adpath {
    type: string
    sql: ${TABLE}.UserADPath ;;
  }

  dimension: user_login_name {
    type: string
    sql: ${TABLE}.UserLoginName ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_name, user_login_name, customer_unit.id, customer_unit.name]
  }
}
