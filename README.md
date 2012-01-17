The Bug
-------

When using :dependent => :delete_all with an association that has a custom foreign_key and primary_key deletion of the parent record fails as a result of an odd SQL query, resulting in an ActiveRecord::StatementInvalid error.

Specifically, the SQL generated is:

```
DELETE FROM "children" WHERE "children"."foreign_key" = 2 AND "children"."primary_key" IS NULL
```

when it should be just

```
DELETE FROM "children" WHERE "children"."foreign_key" = 2 
```


How To Recreate the Bug
-----------------------

* Clone this repo
* Enter console
* Create a book with a name
* Add some pages with titles
* Try to delete the book


Temporary Solution
------------------

At the moment I'm planning a before_destroy to override this in my app and generate the proper SQL but it would be good to get the bug fixed if this does turn out to be one.

