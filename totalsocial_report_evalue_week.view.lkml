view: report_evalue_week {
  sql_table_name: totalsocial.totalsocial_report_evalue_week ;;
  suggestions: no

  dimension: bsrp {
    type: string
    sql: ${TABLE}.bsrp ;;
    hidden: yes
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

  dimension: facebook_fans {
    type: number
    sql: ${TABLE}.ff ;;
    hidden: yes
  }

  dimension: facebook_shares {
    type: number
    sql: ${TABLE}.fs ;;
    hidden: yes
  }

  measure: facebook_shares_sum {
    label: "Total Facebook Shares"
    type: sum
    sql: ${facebook_shares} ;;
    group_label: "Social Media Activity"
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}.i ;;
    hidden: yes
  }

  dimension: instagram_followers {
    type: number
    sql: ${TABLE}.`if` ;;
    hidden: yes
  }

  measure: total_instagram_followers {
    type: number
    sql: ${instagram_followers} ;;
    group_label: "Social Media Fanbase"
  }

  dimension: instagram_shares {
    type: number
    sql: ${TABLE}.ir ;;
    hidden: yes
  }

  measure: instagram_shares_sum {
    label: "Total Instagram Shares"
    type: sum
    sql: ${facebook_shares} ;;
    group_label: "Social Media Activity"
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
    hidden: yes
  }

  dimension: max_fanbase {
    type: number
    sql: ${TABLE}.mf ;;
  }


  dimension: pinterest_followers {
    type: number
    sql: ${TABLE}.pf ;;
    hidden: yes
  }

  measure: total_pinterest_followers {
    type: sum
    sql: ${pinterest_followers} ;;
    group_label: "Social Media Fanbase"
  }

  dimension: pinterest_repins {
    type: number
    sql: ${TABLE}.pr ;;
    hidden: yes
  }

  measure: total_pinterest_repins {
    type: sum
    sql: ${pinterest_repins} ;;
    group_label: "Social Media Activity"
  }

  dimension: raw_online_brandsharing {
    type: number
    sql: ${TABLE}.ronb ;;
    hidden: yes
  }

  dimension: raw_online_brandsharing_weekly_avg {
    type: number
    sql: ${TABLE}.ronbwa ;;
    hidden: yes
  }

  dimension: rolledup_total_shares {
    type: number
    sql: ${TABLE}.rts ;;
    hidden: yes
  }

  measure: total_rolledup_shares {
    type: sum
    sql: ${rolledup_total_shares} ;;
    hidden: yes
  }

  dimension: rolledup_total_shares_weekly_avg {
    type: number
    sql: ${TABLE}.rtswa ;;
    hidden: yes

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

  dimension: key {
    sql: CONCAT(${brand_id},${start_date_raw}) ;;
    primary_key: yes
    hidden: yes
  }

  dimension: twitter_followers {
    type: number
    sql: ${TABLE}.tf ;;
    hidden: yes
  }

  measure: total_twitter_followers {
    type: sum
    sql: ${twitter_followers} ;;
    group_label: "Social Media Fanbase"
  }

  dimension: twitter_retweets {
    type: number
    sql: ${TABLE}.tr ;;
    hidden: yes
  }

  measure: twitter_retweets_sum {
    label: "Total Twitter Retweets"
    type: sum
    sql: ${twitter_retweets} ;;
    group_label: "Social Media Activity"
  }

  measure: total_shares {
    type: sum
    sql: ${TABLE}.ts ;;
    group_label: "Social Media Activity"
  }

  dimension: total_shares_weekly_avg {
    type: number
    sql: ${TABLE}.tswa ;;
    hidden: yes
  }

  dimension: youtube_subscribers {
    type: number
    sql: ${TABLE}.ys ;;
    hidden: yes
  }

  measure: total_youtube_subscribers {
    type: sum
    sql: ${youtube_subscribers} ;;
    group_label: "Social Media Fanbase"
  }

  measure: youtube_subscribers_avg {
    type: average
    sql: ${TABLE}.ys ;;
    group_label: "Social Media Activity"
  }

  measure: youtube_shares {
    type: sum
    sql: ${TABLE}.ysh ;;
    group_label: "Social Media Activity"
  }

  # measure: youtube_shares_last_eight_weeks {
  #   type: sum
  #   sql: ${TABLE}.ysh ;;
  #   filters: {
  #     field: start_date_date
  #     value: "56 days"
  #   }
  # }
  dimension: youtube_views {
    type: number
    sql: ${TABLE}.yv ;;
    hidden: yes
  }

  measure: total_youtube_views {
    type: sum
    sql: ${youtube_views} ;;
    group_label: "Social Media Activity"
  }

  measure: total_facebook_fans {
    type: sum
    sql: ${facebook_fans} ;;
    group_label: "Social Media Fanbase"
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
