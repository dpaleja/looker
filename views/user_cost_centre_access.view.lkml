view: user_cost_centre_access {
  sql_table_name: dbo.UserCostCentreAccess ;;

  dimension: cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCentreID ;;
  }

  dimension: is_add_to_budget {
    type: string
    sql: ${TABLE}.IsAddToBudget ;;
  }

  dimension: is_for_job_class {
    type: string
    sql: ${TABLE}.IsForJobClass ;;
  }

  dimension: is_read_only {
    type: string
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
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
