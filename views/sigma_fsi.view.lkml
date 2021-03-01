view: sigma_fsi {
  sql_table_name: public.sigma_fsi ;;

  dimension: fsi_canonical_state {
    type: string
    sql: ${TABLE}.fsi_canonical_state ;;
  }

  dimension: fsi_country_code {
    type: string
    sql: ${TABLE}.fsi_country_code ;;
  }

  dimension: fsi_date {
    type: string
    sql: ${TABLE}.fsi_date ;;
  }

  dimension: fsi_description_status {
    type: string
    sql: ${TABLE}.fsi_description_status ;;
  }

  dimension: fsi_language_state {
    type: string
    sql: ${TABLE}.fsi_language_state ;;
  }

  dimension: fsi_section_code {
    type: string
    sql: ${TABLE}.fsi_section_code ;;
  }

  dimension: fsi_title_status {
    type: string
    sql: ${TABLE}.fsi_title_status ;;
  }

  dimension: fsi_url {
    type: string
    sql: ${TABLE}.fsi_url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
