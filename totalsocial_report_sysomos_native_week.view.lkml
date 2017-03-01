view: report_sysomos_week {
  sql_table_name: totalsocial.totalsocial_report_sysomos_native_week ;;
  suggestions: yes

  dimension: bir {
    type: number
    sql: ${TABLE}.bir ;;
  }

  dimension: blog_mentions {
    type: number
    sql: ${TABLE}.bm ;;
  }

  dimension: blog_sentiment_percentage {
    type: string
    sql: ${TABLE}.bs ;;
  }

  dimension: bsm {
    type: string
    sql: ${TABLE}.bsm ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}.ed ;;
  }

  dimension: forum_mentions {
    type: number
    sql: ${TABLE}.fm ;;
  }

  measure: forum_mentions_sum {
    type: sum
    sql: ${forum_mentions};;
  }

  dimension: forum_sentiment_percentage {
    type: string
    sql: ${TABLE}.fs ;;
  }

  dimension: fsm {
    type: string
    sql: ${TABLE}.fsm ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}.i ;;
  }

  dimension: irp {
    type: string
    sql: ${TABLE}.irp ;;
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
  }

  dimension: ns {
    type: number
    sql: ${TABLE}.ns ;;
  }

  dimension: rbir {
    type: number
    sql: ${TABLE}.rbir ;;
  }

  dimension: rns {
    type: number
    sql: ${TABLE}.rns ;;
  }

  dimension: roni {
    type: number
    sql: ${TABLE}.roni ;;
  }

  dimension: rons {
    type: number
    sql: ${TABLE}.rons ;;
  }

  dimension: ronv {
    type: number
    sql: ${TABLE}.ronv ;;
  }

  dimension: rtbir {
    type: number
    sql: ${TABLE}.rtbir ;;
  }

  dimension: rtbm {
    type: number
    sql: ${TABLE}.rtbm ;;
  }

  dimension: rtom {
    type: number
    sql: ${TABLE}.rtom ;;
  }

  dimension: rtos {
    type: string
    sql: ${TABLE}.rtos ;;
  }

  dimension: rtosm {
    type: string
    sql: ${TABLE}.rtosm ;;
  }

  dimension_group: start_date {
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

  dimension: srp {
    type: string
    sql: ${TABLE}.srp ;;
  }

  dimension: twitter_authority {
    type: string
    sql: ${TABLE}.ta ;;
  }

  dimension: tbm {
    type: number
    sql: ${TABLE}.tbm ;;
  }

  dimension: tir {
    type: number
    sql: ${TABLE}.tir ;;
  }

  dimension: twitter_mentions {
    type: number
    sql: ${TABLE}.tm ;;
  }

  measure: twitter_mentions_sum {
    type: sum
    sql: ${twitter_mentions};;
  }

  measure: twitter_mentions_per_brand {
    type: number
    sql: 1.0 * ${twitter_mentions_sum}/IF(${brand.count}=0,NULL,${brand.count}) ;;
    value_format_name: decimal_2
    view_label: "Brand Comparison"
  }

  dimension: total_mentions {
    type: number
    sql: ${TABLE}.tom ;;
  }

  measure: total_mentions_sum {
    type: sum
    sql: ${total_mentions};;
  }

  dimension: tomwa {
    type: number
    sql: ${TABLE}.tomwa ;;
  }

  dimension: tos {
    type: string
    sql: ${TABLE}.tos ;;
  }

  dimension: tosm {
    type: string
    sql: ${TABLE}.tosm ;;
  }

  dimension: twitter_sentiment_percentage_negative {
    type: number
    sql: ${TABLE}.ts.n ;;
    value_format_name: percent_2
  }

  dimension: twitter_sentiment_percentage_positive {
    type: number
    sql: ${TABLE}.ts.p ;;
    value_format_name: percent_2
  }

  dimension: twitter_sentiment_percentage_neutral {
    type: number
    sql: ${TABLE}.ts.ne ;;
    value_format_name: percent_2
  }

  measure: twitter_sentiment_percentage_negative_avg {
    type: average
    sql: ${twitter_sentiment_percentage_negative};;
    value_format_name: percent_2
    drill_fields: [brand.name,start_date_week,twitter_sentiment_percentage_negative,twitter_sentiment_percentage_neutral,twitter_sentiment_percentage_positive]
  }

  measure: twitter_sentiment_percentage_positive_avg {
    type: average
    sql: ${twitter_sentiment_percentage_positive};;
    value_format_name: percent_2
    drill_fields: [brand.name,start_date_week,twitter_sentiment_percentage_negative,twitter_sentiment_percentage_neutral,twitter_sentiment_percentage_positive]
  }

  measure: twitter_sentiment_percentage_neutral_avg {
    type: average
    sql: ${twitter_sentiment_percentage_neutral};;
    value_format_name: percent_2
    drill_fields: [brand.name,start_date_week,twitter_sentiment_percentage_negative,twitter_sentiment_percentage_neutral,twitter_sentiment_percentage_positive]
  }

  dimension: tsm {
    type: string
    sql: ${TABLE}.tsm ;;
  }

  dimension: twitter_influencers {
    type: number
    sql: ${TABLE}.tti ;;
  }

  measure: twitter_influencers_sum {
    type: sum
    sql: ${twitter_influencers};;
  }

  dimension: twitter_users {
    type: number
    sql: ${TABLE}.ttu ;;
  }

  measure: twitter_users_sum {
    type: sum
    sql: ${twitter_users};;
  }

  dimension: vrp {
    type: string
    sql: ${TABLE}.vrp ;;
  }

  dimension: key {
    type: string
    primary_key: yes
    sql: CONCAT(${brand_id},${start_date_time}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
