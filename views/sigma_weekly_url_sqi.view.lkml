view: sigma_weekly_url_sqi {
  sql_table_name: public.sigma_weekly_url_sqi ;;

  dimension: sqi_country {
    type: string
    sql: ${TABLE}.sqi_country ;;
  }

  dimension: sqi_country_code {
    type: string
    sql: ${TABLE}.sqi_country_code ;;
  }

  dimension: sqi_crawl_date {
    type: string
    sql: ${TABLE}.sqi_crawl_date ;;
  }

  dimension: sqi_origin_url {
    type: string
    sql: ${TABLE}.sqi_origin_url ;;
  }

  dimension: sqi_redirect_status_code {
    type: string
    sql: ${TABLE}.sqi_redirect_status_code ;;
  }

  dimension: sqi_redirect_to {
    type: string
    sql: ${TABLE}.sqi_redirect_to ;;
  }

  dimension: sqi_site_gbm {
    type: string
    sql: ${TABLE}.sqi_site_gbm ;;
  }

  dimension: sqi_site_section {
    type: string
    sql: ${TABLE}.sqi_site_section ;;
  }

  dimension: sqi_sites_code {
    type: string
    sql: ${TABLE}.sqi_sites_code ;;
  }

  dimension: sqi_status_code {
    type: string
    sql: ${TABLE}.sqi_status_code ;;
  }

  dimension: sqi_status_value {
    type: string
    sql: ${TABLE}.sqi_status_value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
