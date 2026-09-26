use context starter2024
include csv

recipes = load-table:
  title :: String,
  Serings :: Number,
  prep-time :: Number
  source: csv-table-url(

workouts = table: date :: String, activity :: String, duration :: Number, had-protein :: Boolean
  row: "9/21", "run", 30, true
  row: "9/22", "gym", 45, false
  row: "9/23", "bike", 25, true
end

