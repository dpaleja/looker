view: admapping {
  sql_table_name: dbo.ADMapping ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: security_group_name {
    type: string
    sql: ${TABLE}.SecurityGroupName ;;
  }

  dimension: security_group_path {
    type: string
    sql: ${TABLE}.SecurityGroupPath ;;
  }

  dimension: untis_option {
    type: number
    sql: ${TABLE}.UntisOption ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, security_group_name, usage_set.count]
  }
}
