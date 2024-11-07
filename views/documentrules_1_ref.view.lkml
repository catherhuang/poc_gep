include: "documentrules_1.view"


view: +documentrules_1 {
  dimension: teamMemberLeadList {
    hidden: yes
    sql: ${TABLE}.teamMemberLeadList;;
  }
}
