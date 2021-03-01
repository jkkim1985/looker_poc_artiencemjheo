view: sigma_crawl {
  sql_table_name: public.sigma_crawl ;;

  dimension: crawl_country_code {
    type: string
    sql: ${TABLE}.crawl_country_code ;;
  }

  dimension: crawl_date {
    type: string
    sql: ${TABLE}.crawl_date ;;
  }

  dimension: crawl_datetime {
    type: string
    sql: ${TABLE}.crawl_datetime ;;
  }

  dimension: crawl_index {
    type: string
    sql: ${TABLE}.crawl_index ;;
  }

  dimension: crawl_referer {
    type: string
    sql: ${TABLE}.crawl_referer ;;
  }

  dimension: crawl_section_code {
    type: string
    sql: ${TABLE}.crawl_section_code ;;
  }

  dimension: crawl_status_code {
    type: string
    sql: ${TABLE}.crawl_status_code ;;
  }

  dimension: crawl_url {
    type: string
    sql: ${TABLE}.crawl_url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
