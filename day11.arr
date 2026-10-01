include csv
  
voter-data = 
  load-table: VoterID,FirstName,LastName,DOB,Party,Address,City,State,Zip,Phone,Email,LastVoted 
  source: csv-table-url("voters.csv", default-options)
end

fun blank-to-indep(s :: String) -> String:
  doc: "replaces an empty string with Independent"
  if s == "":
    "Independent"
  else:
    s
  end
where:
  blank-to-indep("") is "Independent"
  blank-to-indep("blah") is "blah"
end

voters-with-indep = transform-column(voter-data, "Party", blank-to-indep)