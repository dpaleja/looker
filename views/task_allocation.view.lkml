view: task_allocation {
  sql_table_name: dbo.TaskAllocation ;;

  dimension: depend_previous_task {
    type: string
    sql: ${TABLE}.DependPreviousTask ;;
  }

  dimension: package_id {
    type: number
    sql: ${TABLE}.PackageId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
