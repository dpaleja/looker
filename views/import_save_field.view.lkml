view: import_save_field {
  sql_table_name: dbo.ImportSaveField ;;
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

  dimension: property_id {
    type: number
    sql: ${TABLE}.PropertyID ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.PropertyName ;;
  }

  dimension: save_id {
    type: number
    sql: ${TABLE}.SaveID ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_name]
  }
}
