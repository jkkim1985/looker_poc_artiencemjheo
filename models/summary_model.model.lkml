connection: "dev_kpi_dashboard"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: sigma_url_sqi {
  join : sigma_url_fsi {
    type: left_outer
    sql_on: (${sigma_url_sqi.sqi_crawl_date} = ${sigma_url_fsi.fsi_crawl_date})
      and (${sigma_url_sqi.sqi_origin_url} = ${sigma_url_fsi.fsi_origin_url});;
    relationship: many_to_one
  }
  join : sigma_region {
    type: left_outer
    sql_on: (${sigma_url_sqi.sqi_country_code} = ${sigma_region.region_country_code});;
    relationship: one_to_one
  }
  always_filter: {
    filters: [sigma_url_sqi.sqi_country_code: "-wrong site code"]
  }
  label: "Summary Table"
}
