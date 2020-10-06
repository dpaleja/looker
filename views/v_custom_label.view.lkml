view: v_custom_label {
  sql_table_name: dbo.vCustomLabel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: custom_abbr_value {
    type: string
    sql: ${TABLE}.CustomAbbrValue ;;
  }

  dimension: custom_value {
    type: string
    sql: ${TABLE}.CustomValue ;;
  }

  dimension: default_abbr_value {
    type: string
    sql: ${TABLE}.DefaultAbbrValue ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.DefaultValue ;;
  }

  dimension: is_current {
    type: string
    sql: ${TABLE}.IsCurrent ;;
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
