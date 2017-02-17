view: totalsocial_brandcategory {
  sql_table_name: totalsocial.totalsocial_brandcategory ;;
  suggestions: no

  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
  }

  dimension: c {
    type: string
    sql: ${TABLE}.c ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_category_count {
    type: count_distinct
    sql: } ;;
  }
}
