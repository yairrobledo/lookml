view: DerivedOrder {
  derived_table: {
    sql: SELECT
      {% parameter experiment_param %} as  experiment,
      id
      FROM order_items;;
  }
  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  parameter: experiment_param {
    type:  unquoted
    label: "Experimento"
    suggestable: yes
  }
}
