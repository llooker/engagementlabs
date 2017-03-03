view: report_sysomos_week {
  sql_table_name: totalsocial.totalsocial_report_sysomos_native_week ;;
  suggestions: yes

  dimension: brand_influencer_ratio {
    type: number
    sql: ${TABLE}.bir ;;
    hidden: yes
  }

  dimension: blog_mentions {
    type: number
    sql: ${TABLE}.bm ;;
    hidden: yes
  }

  measure: total_blog_mentions {
    type: sum
    sql: ${blog_mentions} ;;
    group_label: "Mentions"
  }

  dimension: blog_sentiment_percentage {
    type: string
    sql: ${TABLE}.bs ;;
    hidden: yes
  }

  dimension: blog_sentiment_positive {
    type: number
    sql: ${TABLE}.bs.p ;;
    hidden: yes
  }

  dimension: blog_sentiment_negative {
    type: number
    sql: ${TABLE}.bs.n ;;
    hidden: yes
  }

  dimension: blog_sentiment_neutral {
    type: number
    sql: ${TABLE}.bs.ne ;;
    hidden: yes
  }

  measure: avg_blog_sentiment_positive {
    type: average
    sql: ${blog_sentiment_positive} ;;
    group_label: "Blog Sentiment"
    value_format_name: percent_2
  }

  measure: avg_blog_sentiment_neutral {
    type: average
    sql: ${blog_sentiment_neutral} ;;
    group_label: "Blog Sentiment"
    value_format_name: percent_2
  }

  measure: avg_blog_sentiment_negative {
    type: average
    sql: ${blog_sentiment_negative} ;;
    group_label: "Blog Sentiment"
    value_format_name: percent_2
  }



  dimension: blog_sentiment_mentions {
    type: string
    sql: ${TABLE}.bsm ;;
    hidden: yes
  }

  dimension: blog_sentiment_mentions_positive {
    type: number
    sql: ${TABLE}.bsm.p ;;
    hidden: yes
  }

  dimension: blog_sentiment_mentions_negative {
    type: number
    sql: ${TABLE}.bsm.n ;;
    hidden: yes
  }

  dimension: blog_sentiment_mentions_neutral {
    type: number
    sql: ${TABLE}.bsm.ne ;;
    hidden: yes
  }

  measure: avg_blog_sentiment_mentions_positive {
    type: average
    sql: ${blog_sentiment_mentions_positive} ;;
    group_label: "Blog Sentiment Mentions"
  }

  measure: avg_blog_sentiment_mentions_negative {
    type: average
    sql: ${blog_sentiment_mentions_negative} ;;
    group_label: "Blog Sentiment Mentions"
  }

  measure: avg_blog_sentiment_mentions_neutral {
    type: average
    sql: ${blog_sentiment_mentions_neutral} ;;
    group_label: "Blog Sentiment Mentions"
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
    hidden: yes
  }

  measure: forum_mentions_sum {
    type: sum
    sql: ${forum_mentions};;
    group_label: "Mentions"

  }

  dimension: forum_sentiment_percentage {
    type: string
    sql: ${TABLE}.fs ;;
    hidden: yes
  }

  dimension: forum_sentiment_positive {
    type: number
    sql: ${TABLE}.fs.p ;;
    hidden: yes
  }

  dimension: forum_sentiment_negative {
    type: number
    sql: ${TABLE}.fs.n ;;
    hidden: yes
  }

  dimension: forum_sentiment_neutral {
    type: number
    sql: ${TABLE}.fs.ne ;;
    hidden: yes
  }

  measure: avg_forum_sentiment_positive {
    type: average
    sql: ${forum_sentiment_positive} ;;
    group_label: "Forum Sentiment"
    value_format_name: percent_2
  }

  measure: avg_forum_sentiment_neutral {
    type: average
    sql: ${forum_sentiment_neutral} ;;
    group_label: "Forum Sentiment"
    value_format_name: percent_2
  }

  measure: avg_forum_sentiment_negative {
    type: average
    sql: ${forum_sentiment_negative} ;;
    group_label: "Forum Sentiment"
    value_format_name: percent_2
  }


  dimension: forum_sentiment_mentions {
    type: string
    sql: ${TABLE}.fsm ;;
    hidden: yes
  }

  dimension: forum_sentiment_mentions_positive {
    type: number
    sql: ${TABLE}.fsm.p ;;
    hidden: yes
  }

  dimension: forum_sentiment_mentions_negative {
    type: number
    sql: ${TABLE}.fsm.n ;;
    hidden: yes
  }

  dimension: forum_sentiment_mentions_neutral {
    type: number
    sql: ${TABLE}.fsm.ne ;;
    hidden: yes
  }

  measure: avg_forum_sentiment_mentions_positive {
    type: average
    sql: ${forum_sentiment_mentions_positive} ;;
    group_label: "Forum Sentiment"
  }

  measure: avg_forum_sentiment_mentions_neutral {
    type: average
    sql: ${forum_sentiment_mentions_neutral} ;;
    group_label: "Forum Sentiment"
  }

  measure: avg_forum_sentiment_mentions_negative {
    type: average
    sql: ${forum_sentiment_mentions_negative} ;;
    group_label: "Forum Sentiment"
  }


  dimension: brand_id {
    type: string
    sql: ${TABLE}.i ;;
    hidden: yes
  }

  dimension: influence_rollup_plan {
    type: string
    sql: ${TABLE}.irp ;;
    hidden: yes
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
    hidden: yes
  }

  dimension: net_sentiment {
    type: number
    sql: ${TABLE}.ns ;;
    hidden: yes
  }

  dimension: rolledup_brand_influencer_ratio {
    type: number
    sql: ${TABLE}.rbir ;;
    hidden: yes
  }

  dimension: rolledup_net_sentiment {
    type: number
    sql: ${TABLE}.rns ;;
    hidden: yes
  }

  dimension: raw_online_influence {
    type: number
    sql: ${TABLE}.roni ;;
    hidden: yes
  }

  dimension: raw_online_sentiment {
    type: number
    sql: ${TABLE}.rons ;;
    hidden: yes
  }

  dimension: raw_online_volume {
    type: number
    sql: ${TABLE}.ronv ;;
    hidden: yes
  }

  dimension: week_of_year_number {
    type: number
    sql: 1.0*${start_date_week} ;;
    hidden: yes
  }

  dimension: week_of_quarter {
    type: number
    sql: IF(pmod(${start_date_week_of_year},13) = 0, 13, pmod(${start_date_week_of_year},13))  ;;
  }

  dimension: rolledup_total_influencer_ratio {
    type: number
    sql: ${TABLE}.rtbir ;;
    hidden: yes
  }

  dimension: rolledup_total_base_mentions {
    type: number
    sql: ${TABLE}.rtbm ;;
    hidden: yes
  }

  dimension: rolledup_total_mentions {
    type: number
    sql: ${TABLE}.rtom ;;
    hidden: yes
  }

  dimension: rolledup_total_sentiment {
    type: string
    sql: ${TABLE}.rtos ;;
    hidden: yes
  }

  dimension: rolledup_total_sentiment_mentions {
    type: string
    sql: ${TABLE}.rtosm ;;
    hidden: yes
  }

  dimension_group: start_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      fiscal_month_num,
      fiscal_quarter,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sd ;;
    drill_fields: [brand.name]
  }


  dimension: sentiment_rollup_plan {
    type: string
    sql: ${TABLE}.srp ;;
    hidden: yes
  }

  dimension: twitter_authority {
    type: string
    sql: ${TABLE}.ta ;;
    hidden: yes
  }

  dimension: twitter_authority_high {
    type: number
    sql: ${TABLE}.ta.h ;;
    hidden: yes
  }

  dimension: twitter_authority_low {
    type: number
    sql: ${TABLE}.ta.l ;;
    hidden: yes
  }

  dimension: twitter_authority_medium {
    type: number
    sql: ${TABLE}.ta.m ;;
    hidden: yes
  }

  measure: avg_twitter_authority_high {
    type: average
    sql: ${twitter_authority_high} ;;
    group_label: "Twitter Authority"
  }

  measure: avg_twitter_authority_low {
    type: average
    sql: ${twitter_authority_low} ;;
    group_label: "Twitter Authority"
  }

  measure: avg_twitter_authority_medium {
    type: average
    sql: ${twitter_authority_medium} ;;
    group_label: "Twitter Authority"
  }

  dimension: total_base_mentions {
    type: number
    sql: ${TABLE}.tbm ;;
    hidden: yes
  }

  dimension: total_influencer_ratio {
    type: number
    sql: ${TABLE}.tir ;;
    hidden: yes
  }

  dimension: twitter_mentions {
    type: number
    sql: ${TABLE}.tm ;;
    hidden: yes
  }

  measure: twitter_mentions_sum {
    type: sum
    sql: ${twitter_mentions};;
    group_label: "Mentions"
  }

  measure: twitter_mention_share {
    type: number
    sql: 1.0*${twitter_mentions_sum}/IF(${total_mentions_sum}=0,NULL,${total_mentions_sum}) ;;
    value_format_name: percent_2
    group_label: "Mentions"
  }

  measure: blog_mention_share {
    type: number
    sql: 1.0*${total_blog_mentions}/IF(${total_mentions_sum}=0,NULL,${total_mentions_sum}) ;;
    value_format_name: percent_2
    group_label: "Mentions"
  }

  measure: forum_mention_share {
    type: number
    sql: 1.0*${forum_mentions_sum}/IF(${total_mentions_sum}=0,NULL,${total_mentions_sum}) ;;
    value_format_name: percent_2
    group_label: "Mentions"
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
    hidden: yes
  }

  measure: total_mentions_sum {
    type: sum
    sql: ${total_mentions};;
    group_label: "Mentions"
  }

  dimension: total_mention_weekly_avg {
    type: number
    sql: ${TABLE}.tomwa ;;
    hidden: yes
  }

  dimension: total_online_sentiment_percentage {
    type: string
    sql: ${TABLE}.tos ;;
    hidden: yes
  }

  dimension: total_online_sentiment_mentions {
    type: string
    sql: ${TABLE}.tosm ;;
    hidden: yes
  }

  dimension: twitter_sentiment_percentage_negative {
    type: number
    sql: ${TABLE}.ts.n ;;
    value_format_name: percent_2
    hidden: yes
  }

  dimension: twitter_sentiment_percentage_positive {
    type: number
    sql: ${TABLE}.ts.p ;;
    value_format_name: percent_2
    hidden: yes
  }

  dimension: twitter_sentiment_percentage_neutral {
    type: number
    sql: ${TABLE}.ts.ne ;;
    value_format_name: percent_2
    hidden: yes
  }

  measure: twitter_sentiment_percentage_negative_avg {
    type: average
    sql: ${twitter_sentiment_percentage_negative};;
    value_format_name: percent_2
    drill_fields: [brand.name,start_date_week,twitter_sentiment_percentage_negative,twitter_sentiment_percentage_neutral,twitter_sentiment_percentage_positive]
    group_label: "Twitter Sentiment"
  }

  measure: twitter_sentiment_percentage_positive_avg {
    type: average
    sql: ${twitter_sentiment_percentage_positive};;
    value_format_name: percent_2
    drill_fields: [brand.name,start_date_week,twitter_sentiment_percentage_negative,twitter_sentiment_percentage_neutral,twitter_sentiment_percentage_positive]
    group_label: "Twitter Sentiment"
  }

  measure: twitter_sentiment_percentage_neutral_avg {
    type: average
    sql: ${twitter_sentiment_percentage_neutral};;
    value_format_name: percent_2
    drill_fields: [brand.name,start_date_week,twitter_sentiment_percentage_negative,twitter_sentiment_percentage_neutral,twitter_sentiment_percentage_positive]
    group_label: "Twitter Sentiment"
  }

  dimension: twitter_sentiment_mentions {
    type: string
    sql: ${TABLE}.tsm ;;
    hidden: yes
  }

  dimension: twitter_sentiment_mentions_positive {
    type: number
    sql: ${TABLE}.tsm.p ;;
    hidden: yes
  }

  dimension: twitter_sentiment_mentions_negative {
    type: number
    sql: ${TABLE}.tsm.n ;;
    hidden: yes
  }

  dimension: twitter_sentiment_mentions_neutral {
    type: number
    sql: ${TABLE}.tsm.ne ;;
    hidden: yes
  }

  measure: average_twitter_sentiment_mentions_positive {
    type: average
    sql: ${twitter_sentiment_mentions_positive} ;;
    value_format_name: decimal_2
    group_label: "Twitter Sentiment"
  }

  measure: average_twitter_sentiment_mentions_negative {
    type: average
    sql: ${twitter_sentiment_mentions_negative} ;;
    value_format_name: decimal_2
    group_label: "Twitter Sentiment"
  }

  measure: average_twitter_sentiment_mentions_neutral {
    type: average
    sql: ${twitter_sentiment_mentions_neutral} ;;
    value_format_name: decimal_2
    group_label: "Twitter Sentiment"
  }

  dimension: twitter_influencers {
    type: number
    sql: ${TABLE}.tti ;;
    hidden: yes
  }

  measure: twitter_influencers_sum {
    type: sum
    sql: ${twitter_influencers};;
    hidden: yes
  }

  dimension: twitter_users {
    type: number
    sql: ${TABLE}.ttu ;;
    hidden: yes
  }

  measure: twitter_users_sum {
    label: "Total Twitter Users"
    type: sum
    sql: ${twitter_users};;
  }

  dimension: volume_rollup_plan {
    type: string
    sql: ${TABLE}.vrp ;;
    hidden: yes
  }

  dimension: key {
    type: string
    primary_key: yes
    sql: CONCAT(${brand_id},${start_date_time}) ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
