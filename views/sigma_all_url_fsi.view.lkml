view: sigma_all_url_fsi {
  sql_table_name: public.sigma_all_url_fsi ;;

  dimension: fsi_canonical_tag {
    type: string
    sql: ${TABLE}.fsi_canonical_tag ;;
  }

  dimension: fsi_canonical_tag_non_self_referring {
    type: string
    sql: ${TABLE}.fsi_canonical_tag_non_self_referring ;;
  }

  dimension: fsi_canonical_tag_self_referring {
    type: string
    sql: ${TABLE}.fsi_canonical_tag_self_referring ;;
  }

  dimension: fsi_country {
    type: string
    sql: ${TABLE}.fsi_country ;;
  }

  dimension: fsi_country_code {
    type: string
    sql: ${TABLE}.fsi_country_code ;;
  }

  dimension: fsi_crawl_date {
    type: string
    sql: ${TABLE}.fsi_crawl_date ;;
  }

  dimension: fsi_language {
    type: string
    sql: ${TABLE}.fsi_language ;;
  }

  dimension: fsi_language_no_issue {
    type: string
    sql: ${TABLE}.fsi_language_no_issue ;;
  }

  dimension: fsi_language_wrong {
    type: string
    sql: ${TABLE}.fsi_language_wrong ;;
  }

  dimension: fsi_meta_description_tag {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag ;;
  }

  dimension: fsi_meta_description_tag_duplicate {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_duplicate ;;
  }

  dimension: fsi_meta_description_tag_length {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_length ;;
  }

  dimension: fsi_meta_description_tag_long {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_long ;;
  }

  dimension: fsi_meta_description_tag_missing {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_missing ;;
  }

  dimension: fsi_meta_description_tag_no_issue {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_no_issue ;;
  }

  dimension: fsi_meta_description_tag_short {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_short ;;
  }

  dimension: fsi_origin_url {
    type: string
    sql: ${TABLE}.fsi_origin_url ;;
  }

  dimension: fsi_site_gbm {
    type: string
    sql: ${TABLE}.fsi_site_gbm ;;
  }

  dimension: fsi_site_section {
    type: string
    sql: ${TABLE}.fsi_site_section ;;
  }

  dimension: fsi_sites_code {
    type: string
    sql: ${TABLE}.fsi_sites_code ;;
  }

  dimension: fsi_title_tag {
    type: string
    sql: ${TABLE}.fsi_title_tag ;;
  }

  dimension: fsi_title_tag_duplicate {
    type: string
    sql: ${TABLE}.fsi_title_tag_duplicate ;;
  }

  dimension: fsi_title_tag_length {
    type: string
    sql: ${TABLE}.fsi_title_tag_length ;;
  }

  dimension: fsi_title_tag_long {
    type: string
    sql: ${TABLE}.fsi_title_tag_long ;;
  }

  dimension: fsi_title_tag_missing {
    type: string
    sql: ${TABLE}.fsi_title_tag_missing ;;
  }

  dimension: fsi_title_tag_no_issue {
    type: string
    sql: ${TABLE}.fsi_title_tag_no_issue ;;
  }

  dimension: fsi_title_tag_short {
    type: string
    sql: ${TABLE}.fsi_title_tag_short ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
