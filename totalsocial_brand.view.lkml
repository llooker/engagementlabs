view: brand {
  sql_table_name: totalsocial.totalsocial_brand ;;
  suggestions: no

  filter: brand_select {
    suggest_dimension: name
  }

  dimension: brand_comparitor {
    view_label: "Brand Comparison"


    sql:IF(${name} = '{{ _user_attributes['brand'] }}', CONCAT('1 - ', ${name}),
    IF(${category.name} = '{{ _user_attributes['category'] }}', CONCAT('2 - Rest of ', ${category.name}),
    '3 - All Categories'))
    ;;

    # sql: IF({% condition brand_select %} ${name} {% endcondition %},CONCAT('1 - ', ${name}),
    #       IF( {% condition category.category_select %} ${category.name} {% endcondition %},
    #         CONCAT('2 - Rest of ', ${category.name}),'3 - All Categories'));;
  }

  dimension: brand_comparitor_custom {
    view_label: "Custom Brand Comparison"
    sql:IF(${name} = '{{ _user_attributes['brand'] }}', CONCAT('1 - ', ${name}),
    IF(${name} IN {{ _user_attributes['custom_brand_set'] }}, '2 - Custom Set ',
    '3 - All Categories'))
      ;;
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

  dimension_group: created {
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
    sql: ${TABLE}.cd ;;
  }

  dimension: evalue_ids {
    type: string
    sql: ${TABLE}.eid ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.h ;;
  }

  dimension: is_benchmark {
    type: yesno
    sql: ${TABLE}.ib ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.md ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.n ;;
    drill_fields: [report_sysomos_week.start_date_week]
    link: {
      label: "Brand Dashboard"
      url: "https://engagementlabs.looker.com/dashboards/2?Brand={{ value }}"

    }
  }

  dimension: project {
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

  dimension: sysomos_id {
    type: string
    sql: ${TABLE}.sid ;;
  }

  dimension: talktrack_id {
    type: string
    sql: ${TABLE}.tid ;;
  }

  measure: count {
    type: count
    drill_fields: [brand.name]
  }
}
