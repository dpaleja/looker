view: mappings {
  sql_table_name: dbo.Mappings ;;

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.AttributeName ;;
  }

  dimension: attribute_type {
    type: string
    sql: ${TABLE}.AttributeType ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.ClassName ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: map_id {
    type: number
    sql: ${TABLE}.MapId ;;
  }

  dimension: name_space {
    type: string
    sql: ${TABLE}.NameSpace ;;
  }

  dimension: set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SetId ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      table_name,
      field_name,
      class_name,
      attribute_name,
      sets._old_set_id,
      sets.set_name
    ]
  }
}
