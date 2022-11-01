view: test_table {
  sql_table_name: `thelook.test_table`
    ;;

  dimension: test {
    type: number
    sql: ${TABLE}.test ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
