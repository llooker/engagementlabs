view: brandcategory {
  sql_table_name: totalsocial.totalsocial_brandcategory ;;
  suggestions: no

  dimension: brand_id {
    type: string
    sql: ${TABLE}.b ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.c ;;
  }

  dimension: key {
    type: string
    sql: ${brand_id} || ${category_id} ;;
    primary_key: yes
  }


  measure: count {
    type: count
    drill_fields: []
  }

#   measure: distinct_category_count {
#     type: count_distinct
#     sql: } ;;
#   }
}
