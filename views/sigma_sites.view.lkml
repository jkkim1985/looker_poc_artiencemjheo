view: sigma_sites {
  sql_table_name: public.sigma_sites ;;

  dimension: sites_country_code {
    type: string
    sql: ${TABLE}.sites_country_code ;;
  }

  dimension: sites_date {
    type: string
    sql: ${TABLE}.sites_date ;;
  }

  dimension: sites_section_code {
    type: string
    sql: ${TABLE}.sites_section_code ;;
  }

  dimension: sites_status_code {
    type: string
    sql: ${TABLE}.sites_status_code ;;
  }

  dimension: sites_url {
    type: string
    sql: ${TABLE}.sites_url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
