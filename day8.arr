use context dcic2024

shuttle = table: month, riders
  row: "jan", 1123
  row: "feb", 1045
  row: "mar", 1087
  row: "apr", 999
end

fun cleared-1K(r :: Row) -> Boolean:
  doc: "determines if given row has at least a 1000 riders"
  if r["riders"] >= 1000:
    true
  else:
    false
  end
where:
  cleared-1K(shuttle.row-n(3)) is false
  cleared-1K(shuttle.row-n(2)) is true
end

fun is-winter(r :: Row) -> Boolean:
  doc: "outputs true if the month is jan, fab or mar"
  if (r["month"] == "jan") or (r["month"] == "feb") or (r["month"] == "mar"):
    true
  else:
    false
  end
end

## above  is supplementary video \\ below is day 8

orders = table: time :: String, amount :: Number
  row: "08:00", 10.50
  row: "09:30", 5.75
  row: "10:15", 8.00
  row: "11:00", 3.95
  row: "14:00", 4.95
  row: "16:45", 7.95
end

fun high-value(r :: Row) -> Boolean:
  doc:"returns whether the amount column is >+ 5"
  if r["amount"] >= 5:
    true
  else:
    false
    end
where:
  high-value(orders.row-n(1)) is true
  high-value(orders.row-n(3)) is false
end

high-orders = filter-with(orders, high-value)

value-ordered-orders = order-by(orders, "amount", false)

## below is class exercise

fun is-morning(r :: Row) -> Boolean:
  doc: "checks if time is morning"
  if (r["time"] < "12:00") and (r["time"] >= "04:00"):
    true
  else:
    false
  end
where:
  is-morning(orders.row-n(1)) is true
  is-morning(orders.row-n(5)) is false
end
  
morning-orders = filter-with(orders, is-morning)

morning-orders-sorted = order-by(morning-orders, "time", true)

morning-orders-sorted-inverse = order-by(morning-orders, "time", false)

latest-morning-amount = morning-orders-sorted-inverse.row-n(0)["amount"]
 
