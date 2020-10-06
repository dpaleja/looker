view: v_account_code {
  sql_table_name: dbo.vAccountCode ;;
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

  dimension: classification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClassificationID ;;
  }

  dimension: cls_group_name {
    type: string
    sql: ${TABLE}.ClsGroupName ;;
  }

  dimension: cls_name {
    type: string
    sql: ${TABLE}.ClsName ;;
  }

  dimension: cls_sort_key {
    type: string
    sql: ${TABLE}.ClsSortKey ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: is_restricted_view {
    type: string
    sql: ${TABLE}.IsRestrictedView ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sort_key {
    type: string
    sql: ${TABLE}.SortKey ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      cls_name,
      cls_group_name,
      classification.id,
      classification.name
    ]
  }
}
