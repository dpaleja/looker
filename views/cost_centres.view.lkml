view: cost_centres {
  sql_table_name: dbo.CostCentres ;;
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
      classification.id,
      classification.name,
      asset_users.count,
      cost_centre_filter.count,
      job_class.count,
      user_cost_centre_access.count,
      v_expense_item.count,
      v_user_cost_centre.count
    ]
  }
}
