view: sigma_table_summary_v2 {
  sql_table_name: public.sigma_table_summary_v2 ;;

  measure: summary_canonical_tag_non_self_referring {
    type: sum
    sql: ${TABLE}.summary_canonical_tag_non_self_referring ;;
  }

  measure: summary_canonical_tag_self_referring {
    type: sum
    sql: ${TABLE}.summary_canonical_tag_self_referring ;;
  }


  measure: summary_language_no_issue {
    type: sum
    sql: ${TABLE}.summary_language_no_issue ;;
  }

  measure: summary_language_wrong {
    type: sum
    sql: ${TABLE}.summary_language_wrong ;;
  }

  measure: summary_meta_description_tag_duplicate {
    type: sum
    sql: ${TABLE}.summary_meta_description_tag_duplicate ;;
  }

  measure: summary_meta_description_tag_long {
    type: sum
    sql: ${TABLE}.summary_meta_description_tag_long ;;
  }

  measure: summary_meta_description_tag_missing {
    type: sum
    sql: ${TABLE}.summary_meta_description_tag_missing ;;
  }

  measure: summary_meta_description_tag_no_issue {
    type: sum
    sql: ${TABLE}.summary_meta_description_tag_no_issue ;;
  }

  measure: summary_meta_description_tag_short {
    type: sum
    sql: ${TABLE}.summary_meta_description_tag_short ;;
  }

  measure: summary_page_all {
    type: sum
    sql: ${TABLE}.summary_page_all ;;
  }

  measure: summary_page_removed {
    type: sum
    sql: ${TABLE}.summary_page_removed ;;
  }

  measure: summary_page_xml_sitemap {
    type: sum
    sql: ${TABLE}.summary_page_xml_sitemap ;;
  }

  measure: summary_status_200 {
    type: sum
    sql: ${TABLE}.summary_status_200 ;;
  }

  measure: summary_status_301_correct {
    type: sum
    sql: ${TABLE}.summary_status_301_correct ;;
  }

  measure: summary_status_301_incorrect {
    type: sum
    sql: ${TABLE}.summary_status_301_incorrect ;;
  }

  measure: summary_status_302_correct {
    type: sum
    sql: ${TABLE}.summary_status_302_correct ;;
  }

  measure: summary_status_302_incorrect {
    type: sum
    sql: ${TABLE}.summary_status_302_incorrect ;;
  }

  measure: summary_status_403 {
    type: sum
    sql: ${TABLE}.summary_status_403 ;;
  }

  measure: summary_status_404 {
    type: sum
    sql: ${TABLE}.summary_status_404 ;;
  }

  measure: summary_status_4xx {
    type: sum
    sql: ${TABLE}.summary_status_4xx ;;
  }

  measure: summary_status_5xx {
    type: sum
    sql: ${TABLE}.summary_status_5xx ;;
  }

  measure: summary_title_tag_duplicate {
    type: sum
    sql: ${TABLE}.summary_title_tag_duplicate ;;
  }

  measure: summary_title_tag_long {
    type: sum
    sql: ${TABLE}.summary_title_tag_long ;;
  }

  measure: summary_title_tag_missing {
    type: sum
    sql: ${TABLE}.summary_title_tag_missing ;;
  }

  measure: summary_title_tag_no_issue {
    type: sum
    sql: ${TABLE}.summary_title_tag_no_issue ;;
  }

  measure: summary_title_tag_short {
    type: sum
    sql: ${TABLE}.summary_title_tag_short ;;
  }

  dimension: summary_country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.summary_country ;;
  }

  dimension: summary_country_code {
    type: string
    sql: ${TABLE}.summary_country_code;;
  }

  dimension: summary_crawl_date {
    type: date
    sql: ${TABLE}.summary_crawl_date ;;
  }

  dimension: summary_region {
    type: string
    sql: ${TABLE}.summary_region ;;
    label: "Region"
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

  measure: SQI_Score(%){
    sql: ${summary_status_200} ;;
    type : sum
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
