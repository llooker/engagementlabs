view: report_evalue_week {
  sql_table_name: totalsocial.totalsocial_report_evalue_week ;;
  suggestions: no

  dimension: bsrp {
    type: string
    sql: ${TABLE}.bsrp ;;
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
  }

  dimension: facebook_shares {
    type: number
    sql: ${TABLE}.fs ;;
  }

  measure: facebook_shares_sum {
    type: sum
    sql: ${facebook_shares} ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}.i ;;
  }

  dimension: instagram_followers {
    type: number
    sql: ${TABLE}.`if` ;;
  }

  dimension: instagram_shares {
    type: number
    sql: ${TABLE}.ir ;;
  }

  measure: instagram_shares_sum {
    type: sum
    sql: ${facebook_shares} ;;
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
  }

  dimension: max_fanbase {
    type: number
    sql: ${TABLE}.mf ;;
  }

  dimension: pf {
    type: number
    sql: ${TABLE}.pf ;;
  }

  dimension: pr {
    type: number
    sql: ${TABLE}.pr ;;
  }

  dimension: ronb {
    type: number
    sql: ${TABLE}.ronb ;;
  }

  dimension: ronbwa {
    type: number
    sql: ${TABLE}.ronbwa ;;
  }

  dimension: rts {
    type: number
    sql: ${TABLE}.rts ;;
  }

  dimension: rtswa {
    type: number
    sql: ${TABLE}.rtswa ;;
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
  }
  dimension: twitter_followers {
    type: number
    sql: ${TABLE}.tf ;;
  }

  dimension: twitter_retweets {
    type: number
    sql: ${TABLE}.tr ;;
  }

  measure: twitter_retweets_sum {
    type: sum
    sql: ${twitter_retweets} ;;
  }

  measure: total_shares {
    type: sum
    sql: ${TABLE}.ts ;;
  }

  dimension: tswa {
    type: number
    sql: ${TABLE}.tswa ;;
  }

  measure: youtube_subscribers_avg {
    type: average
    sql: ${TABLE}.ys ;;
  }

  measure: youtube_shares {
    type: sum
    sql: ${TABLE}.ysh ;;
  }

  measure: youtube_shares_last_eight_weeks {
    type: sum
    sql: ${TABLE}.ysh ;;
    filters: {
      field: start_date_date
      value: "56 days"
    }
  }

  measure: youtube_views {
    type: sum
    sql: ${TABLE}.yv ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
