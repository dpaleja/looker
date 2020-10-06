view: v_user_cost_centre {
  sql_table_name: dbo.vUserCostCentre ;;

  dimension: cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCentreID ;;
  }

  dimension: is_add_to_budget {
    type: number
    sql: ${TABLE}.IsAddToBudget ;;
  }

  dimension: is_for_job_class {
    type: number
    sql: ${TABLE}.IsForJobClass ;;
  }

  dimension: is_read_only {
    type: number
    sql: ${TABLE}.IsReadOnly ;;
  }

  dimension: mapping_type {
    type: number
    sql: ${TABLE}.MappingType ;;
  }

  dimension: restriction_type {
    type: number
    sql: ${TABLE}.RestrictionType ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_name,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id,
      cost_centres.id,
      cost_centres.name
    ]
  }
}
