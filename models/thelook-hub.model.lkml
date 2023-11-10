connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view"

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: order_items {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
  join: inventory_items {
    type: left_outer
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
    relationship: one_to_one
  }
  join: products {
    type: left_outer
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
    relationship: one_to_one
  }
}
