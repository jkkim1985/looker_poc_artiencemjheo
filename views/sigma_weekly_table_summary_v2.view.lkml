view: sigma_weekly_table_summary_v2 {
  sql_table_name: public.sigma_weekly_table_summary_v2 ;;

  dimension: summary_canonical_tag_non_self_referring {
    type: string
    sql: ${TABLE}.summary_canonical_tag_non_self_referring ;;
  }

  dimension: summary_canonical_tag_self_referring {
    type: string
    sql: ${TABLE}.summary_canonical_tag_self_referring ;;
  }

  dimension: summary_country {
    type: string
    sql: ${TABLE}.summary_country ;;
  }

  dimension: summary_country_code {
    type: string
    sql: ${TABLE}.summary_country_code ;;
  }

  dimension: summary_crawl_date {
    type: string
    sql: ${TABLE}.summary_crawl_date ;;
  }

  dimension: summary_language_no_issue {
    type: string
    sql: ${TABLE}.summary_language_no_issue ;;
  }

  dimension: summary_language_wrong {
    type: string
    sql: ${TABLE}.summary_language_wrong ;;
  }

  dimension: summary_meta_description_tag_duplicate {
    type: string
    sql: ${TABLE}.summary_meta_description_tag_duplicate ;;
  }

  dimension: summary_meta_description_tag_long {
    type: string
    sql: ${TABLE}.summary_meta_description_tag_long ;;
  }

  dimension: summary_meta_description_tag_missing {
    type: string
    sql: ${TABLE}.summary_meta_description_tag_missing ;;
  }

  dimension: summary_meta_description_tag_no_issue {
    type: string
    sql: ${TABLE}.summary_meta_description_tag_no_issue ;;
  }

  dimension: summary_meta_description_tag_short {
    type: string
    sql: ${TABLE}.summary_meta_description_tag_short ;;
  }

  dimension: summary_page_all {
    type: string
    sql: ${TABLE}.summary_page_all ;;
  }

  dimension: summary_page_removed {
    type: string
    sql: ${TABLE}.summary_page_removed ;;
  }

  dimension: summary_page_xml_sitemap {
    type: string
    sql: ${TABLE}.summary_page_xml_sitemap ;;
  }

  dimension: summary_region {
    type: string
    sql: ${TABLE}.summary_region ;;
  }

  dimension: summary_site_gbm {
    type: string
    sql: ${TABLE}.summary_site_gbm ;;
  }

  dimension: summary_site_section {
    type: string
    sql: ${TABLE}.summary_site_section ;;
  }

  dimension: summary_sites_code {
    type: string
    sql: ${TABLE}.summary_sites_code ;;
  }

  dimension: summary_status_200 {
    type: string
    sql: ${TABLE}.summary_status_200 ;;
  }

  dimension: summary_status_301_correct {
    type: string
    sql: ${TABLE}.summary_status_301_correct ;;
  }

  dimension: summary_status_301_incorrect {
    type: string
    sql: ${TABLE}.summary_status_301_incorrect ;;
  }

  dimension: summary_status_302_correct {
    type: string
    sql: ${TABLE}.summary_status_302_correct ;;
  }

  dimension: summary_status_302_incorrect {
    type: string
    sql: ${TABLE}.summary_status_302_incorrect ;;
  }

  dimension: summary_status_403 {
    type: string
    sql: ${TABLE}.summary_status_403 ;;
  }

  dimension: summary_status_404 {
    type: string
    sql: ${TABLE}.summary_status_404 ;;
  }

  dimension: summary_status_4xx {
    type: string
    sql: ${TABLE}.summary_status_4xx ;;
  }

  dimension: summary_status_5xx {
    type: string
    sql: ${TABLE}.summary_status_5xx ;;
  }

  dimension: summary_title_tag_duplicate {
    type: string
    sql: ${TABLE}.summary_title_tag_duplicate ;;
  }

  dimension: summary_title_tag_long {
    type: string
    sql: ${TABLE}.summary_title_tag_long ;;
  }

  dimension: summary_title_tag_missing {
    type: string
    sql: ${TABLE}.summary_title_tag_missing ;;
  }

  dimension: summary_title_tag_no_issue {
    type: string
    sql: ${TABLE}.summary_title_tag_no_issue ;;
  }

  dimension: summary_title_tag_short {
    type: string
    sql: ${TABLE}.summary_title_tag_short ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
