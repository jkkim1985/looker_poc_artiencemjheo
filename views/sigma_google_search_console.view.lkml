view: sigma_google_search_console {
  sql_table_name: public.sigma_google_search_console ;;

  dimension: gsc_clicks {
    type: number
    sql: ${TABLE}.gsc_clicks ;;
  }

  dimension: gsc_create_at {
    type: string
    sql: ${TABLE}.gsc_create_at ;;
  }

  dimension: gsc_ctr {
    type: number
    sql: ${TABLE}.gsc_ctr ;;
  }

  dimension: gsc_date {
    type: string
    sql: ${TABLE}.gsc_date ;;
  }

  dimension: gsc_id {
    type: string
    sql: ${TABLE}.gsc_id ;;
  }

  dimension: gsc_impressions {
    type: number
    sql: ${TABLE}.gsc_impressions ;;
  }

  dimension: gsc_page {
    type: string
    sql: ${TABLE}.gsc_page ;;
  }

  dimension: gsc_position {
    type: number
    sql: ${TABLE}.gsc_position ;;
  }

  dimension: gsc_range {
    type: string
    sql: ${TABLE}.gsc_range ;;
  }

  dimension: gsc_site {
    type: string
    sql: ${TABLE}.gsc_site ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
