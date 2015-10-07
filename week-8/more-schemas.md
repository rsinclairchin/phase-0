![one-to-one schema](/imgs/onetoone.png)
![many-to-many schema](/imgs/manytomany.png)
![groceries schema](/imgs/groceries.png)

#What is a one-to-one database?
One-to-one is a sort of primary table and supplimentary explansion pack table.

#When would you use a one-to-one database? (Think generally, not in terms of the example you created).
It's used for things that will have lots and lots of information relating to each record, and it splits that information up into two tables to make it easier to find and access information in the database. Generally, I think it's composed of a basic information table, and an extensive details table.

#What is a many-to-many database?
Many-to-many refers to two tables that have their own separate sets of information but are still related in some way.

#When would you use a many-to-many database? (Think generally, not in terms of the example you created).
These would be used to connect multiple tables containing completely separate information that relate to each other in some way.

#What is confusing about database schemas? What makes sense?
It can be confusing to think about foreign keys and which database they belong in, but [this article](http://databases.about.com/od/specificproducts/a/keys.htm) was really, very helpful in figuring that all out.
What makes the most sense is the different types of databases. One-to-many, one-to-one, many-to-many, they make sense and why they'd be different and the situations you'd use them for make sense.