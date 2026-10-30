\-- Error in B2 explained: 



Skipping A3 didn’t give an error because zero rows is a valid result in SQL. An INSERT ... SELECT whose JOIN matches nothing is a perfectly legal statement. It inserts 0 rows and reports success, and DBeaver shows “0 rows affected” as a normal outcome.



Here is what happened in your run:



* The inner JOIN dropped every user and restaurant row whose area wasn’t in areas. A join only returns rows that match, so unmatched rows disappear without a warning.
* The riders insert joined only on city, and the cities were loaded, so it worked normally.
* The users and restaurants inserts joined on area, and the areas weren’t loaded, so every row failed to match and nothing was inserted. The database sees no mistake in that.



Errors only come from rule violations, like a bad FK or a failed CHECK. A migration that quietly copies less than it should violates no rule, so it’s the most dangerous kind of failure. That’s why we compare counts after every load, and why the anti-join query (LEFT JOIN ... WHERE ... IS NULL) is worth keeping for every migration you write.



In practice, always read the affected-rows number after an INSERT ... SELECT and compare it with what you expected. And if a load seems to have worked but COUNT(\*) says otherwise, suspect the join first.



Next, run the three constraint-break tests from Step B3 (the under-18 rider, the duplicate email, and the bad phone with a digit in the name). Send me the error message from each. Once those fail the way they should, we’ll build menu\_items, orders and order\_items.





