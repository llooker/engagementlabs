connection: "totalsocial_cas-c1-east-ca-n1"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project
fiscal_month_offset: 2

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: brand {
  persist_for: "24 hours"
  label: "Weekly Information by Brand"
  join: report_sysomos_week {
    sql_on: ${brand.id} = ${report_sysomos_week.brand_id}  ;;
    relationship: one_to_many
  }
  join: report_evalue_week {
    view_label: "Weekly Social Media Information"
    sql_on: ${report_sysomos_week.brand_id} = ${report_evalue_week.brand_id} AND ${report_sysomos_week.start_date_date} = ${report_evalue_week.start_date_date}  ;;
    relationship: one_to_many
  }
  join: report_talktrack_week {
    sql_on: ${report_sysomos_week.brand_id} = ${report_talktrack_week.brand_id} AND ${report_sysomos_week.start_date_date} = ${report_talktrack_week.start_date_date}  ;;
    relationship: one_to_many
  }
  join: brandcategory {
    sql_on: ${brand.id} = ${brandcategory.brand_id} ;;
    relationship: one_to_many
  }
  join: category {
    sql_on: ${brandcategory.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
  # join: mention_percentile {
  #   sql_on: ${report_sysomos_week.brand_id}=${mention_percentile.brand_name} ;;
  #   relationship: one_to_one
  # }

}

# explore: mention_percentile {
#   join: report_sysomos_week {
#     sql_on: ${mention_percentile.brand_name} = ${report_sysomos_week.brand_id} ;;
#     relationship: one_to_one
#   }
#   join: brand {
#     sql_on: ${report_sysomos_week.brand_id} = ${brand.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: mention_percentile_rank {
#   join: report_sysomos_week {
#     sql_on: ${mention_percentile_rank.brand_id} = ${report_sysomos_week.brand_id} ;;
#     relationship: one_to_one
#   }
#   join: brand {
#     sql_on: ${report_sysomos_week.brand_id} = ${brand.id} ;;
#     relationship: many_to_one
#   }
# }


explore: report_sysomos_week {
  join: brand {
    sql_on: ${report_sysomos_week.brand_id} = ${brand.id}  ;;
    relationship: many_to_one
  }
  join: brandcategory {
    sql_on: ${brand.id} = ${brandcategory.brand_id} ;;
    relationship: one_to_many
  }
  join: category {
    sql_on: ${brandcategory.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: sysomos_mentioncount {
  join: brand {
    sql_on: ${sysomos_mentioncount.sysomos_id} = ${brand.sysomos_id}  ;;
    relationship: many_to_one
  }
  join: brandcategory {
    sql_on: ${brand.id} = ${brandcategory.brand_id} ;;
    relationship: one_to_many
  }
  join: category {
    sql_on: ${brandcategory.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}
