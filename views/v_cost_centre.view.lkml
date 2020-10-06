view: v_cost_centre {
  sql_table_name: dbo.vCostCentre ;;
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

  dimension: classification_id2 {
    type: number
    sql: ${TABLE}.ClassificationID2 ;;
  }

  dimension: cls_group_id {
    type: number
    sql: ${TABLE}.ClsGroupID ;;
  }

  dimension: cls_group_id2 {
    type: number
    sql: ${TABLE}.ClsGroupID2 ;;
  }

  dimension: cls_group_name {
    type: string
    sql: ${TABLE}.ClsGroupName ;;
  }

  dimension: cls_group_name2 {
    type: string
    sql: ${TABLE}.ClsGroupName2 ;;
  }

  dimension: cls_name {
    type: string
    sql: ${TABLE}.ClsName ;;
  }

  dimension: cls_name2 {
    type: string
    sql: ${TABLE}.ClsName2 ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: is_glmapping {
    type: string
    sql: ${TABLE}.IsGLMapping ;;
  }

  dimension: is_nominal {
    type: string
    sql: ${TABLE}.IsNominal ;;
  }

  dimension: is_service_costing {
    type: string
    sql: ${TABLE}.IsServiceCosting ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: sort_key {
    type: string
    sql: ${TABLE}.SortKey ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
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
