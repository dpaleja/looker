view: object_definition {
  sql_table_name: dbo.ObjectDefinition ;;

  dimension: append_only_required {
    type: string
    sql: ${TABLE}.AppendOnlyRequired ;;
  }

  dimension: import_type {
    type: number
    sql: ${TABLE}.ImportType ;;
  }

  dimension: is_required {
    type: string
    sql: ${TABLE}.IsRequired ;;
  }

  dimension: object_type {
    type: number
    sql: ${TABLE}.ObjectType ;;
  }

  dimension: property_id {
    type: number
    sql: ${TABLE}.PropertyID ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.PropertyName ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [property_name]
  }
}
