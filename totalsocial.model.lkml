connection: "totalsocial_cas-c1-east-ca-n1"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
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
#   join: orders {
#     sql_on: ${orders.id} = ${order_items.order_id}
#   }
#
#   join: users {
#     sql_on: ${users.id} = ${orders.user_id}
#   }
}
