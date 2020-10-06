view: vendor_service_alignment {
  sql_table_name: dbo.VendorServiceAlignment ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: asset_sub_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetSubTypeID ;;
  }

  dimension: asset_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetTypeID ;;
  }

  dimension: business_service_id {
    type: number
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: child_suffix {
    type: string
    sql: ${TABLE}.ChildSuffix ;;
  }

  dimension: inherit_from_parent {
    type: string
    sql: ${TABLE}.InheritFromParent ;;
  }

  dimension: is_child {
    type: string
    sql: ${TABLE}.IsChild ;;
  }

  dimension: linked_expense_id {
    type: number
    sql: ${TABLE}.LinkedExpenseID ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.ServiceType ;;
  }

  dimension: vendor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.VendorID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      vendor.id,
      vendor.name,
      asset_type.id,
      asset_type.name,
      asset_sub_type.id,
      asset_sub_type.name
    ]
  }
}
