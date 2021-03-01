view: sigma_detect_copy_check {
  sql_table_name: public.sigma_detect_copy_check ;;

  dimension: colname {
    type: string
    sql: ${TABLE}.colname ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.create_at ;;
  }

  dimension: err_code {
    type: number
    sql: ${TABLE}.err_code ;;
  }

  dimension: err_reason {
    type: string
    sql: ${TABLE}.err_reason ;;
  }

  dimension: err_tag {
    type: string
    sql: ${TABLE}.err_tag ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: line_number {
    type: number
    sql: ${TABLE}.line_number ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: raw_line {
    type: string
    sql: ${TABLE}.raw_line ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.update_at ;;
  }

  measure: count {
    type: count
    drill_fields: [filename, colname]
  }
}
