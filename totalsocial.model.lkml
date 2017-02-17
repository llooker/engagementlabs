connection: "totalsocial_cas-c1-east-ca-n1"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: sysomos_week {
  join: brand {
    sql_on: ${sysomos_week.i} = ${brand._id}  ;;
    relationship: many_to_one
  }
  join: totalsocial_brandcategory {
    sql_on: ${brand._id} = ${totalsocial_brandcategory.b} ;;
    relationship: one_to_many
  }
  join: totalsocial_category {
    sql_on: ${totalsocial_brandcategory.c} = ${totalsocial_category._id} ;;
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
