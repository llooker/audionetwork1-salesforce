# preliminaries #

connection: "salesforce"

include: "*.view"

include: "*.dashboard"

# views to explore——i.e., "base views" #

explore: account {

  join: contact {
    sql_on: ${account.id} = ${contact.account_id} ;;
    relationship: one_to_many
  }

  join: creator {
    from: user
    sql_on: ${contact.created_by_id} = ${creator.id} ;;
    relationship: many_to_one
  }

  join: account_owner {
    from: user
    sql_on: ${account.owner_id} = ${account_owner.id} ;;
    relationship: many_to_one
  }
}



explore: opportunity {
  #   sql_always_where: |
  #     NOT ${opportunity.is_deleted}
  join: account {
     sql_on: ${opportunity.account_id} = ${account.id} ;;
     relationship: many_to_one
   }

  join: opportunity_line_item {
    sql_on: ${opportunity.id} = ${opportunity_line_item.opportunity_id}  ;;
    relationship: one_to_many
  }

  join: opportunity_facts {
    sql_on: ${opportunity.close_raw} = ${opportunity_facts.best_month_in_12} ;;
    relationship: many_to_one
  }

   join: account_owner {
     from: user
     sql_on: ${account.owner_id} = ${account_owner.id} ;;
     relationship: many_to_one
   }

   join: opportunity_owner {
     from: user
     sql_on: ${opportunity.owner_id} = ${opportunity_owner.id} ;;
     relationship: many_to_one
   }
}
