In SQL, a common yet often overlooked error is the improper handling of NULL values.  Consider the following scenario: You are trying to find all customers who have an email address.

```sql
SELECT * FROM Customers WHERE email = NULL;
```
This query will not return any results, even if there are customers with NULL email addresses.  This is because NULL does not equal NULL; it represents the absence of a value, not a specific value. 

The correct approach is to use the `IS NULL` operator:

```sql
SELECT * FROM Customers WHERE email IS NULL;
```
This will correctly identify all customers without an email address.