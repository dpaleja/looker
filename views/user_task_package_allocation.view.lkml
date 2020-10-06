view: user_task_package_allocation {
  sql_table_name: dbo.UserTaskPackageAllocation ;;

  dimension: package_id {
    type: number
    sql: ${TABLE}.PackageId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [users.name, users.first_name, users.last_name, users.aduser_name, users.oauth_user_id]
  }
}
