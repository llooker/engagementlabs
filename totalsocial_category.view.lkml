view: category {
  sql_table_name: totalsocial.totalsocial_category ;;
  suggestions: yes

  filter: category_select {
    suggest_dimension: name
  }

  dimension: id {
    type: string
    sql: ${TABLE}._id ;;
    primary_key: yes
  }

  dimension: country {
    type: string
    sql: ${TABLE}.c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.n ;;
    drill_fields: [brand.name]
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.p ;;
  }

  dimension_group: last_synchronized {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
