view: data_ware_house_update_log {
  sql_table_name: dbo.DataWareHouseUpdateLog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: dbl_record_count {
    type: number
    sql: ${TABLE}.dblRecordCount ;;
  }

  dimension_group: dtm_update {
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
    sql: ${TABLE}.dtmUpdate ;;
  }

  dimension: is_compact {
    type: string
    sql: ${TABLE}.IsCompact ;;
  }

  dimension: is_sub_details {
    type: string
    sql: ${TABLE}.IsSubDetails ;;
  }

  dimension: model_type {
    type: number
    sql: ${TABLE}.ModelType ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_name]
  }
}
