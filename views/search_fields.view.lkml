view: search_fields {
  sql_table_name: dbo.SearchFields ;;

  dimension: column_width {
    type: number
    sql: ${TABLE}.ColumnWidth ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DataType ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DisplayName ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: search_type {
    type: number
    sql: ${TABLE}.SearchType ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [field_name, display_name]
  }
}
