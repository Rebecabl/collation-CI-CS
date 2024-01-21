This project involves the creation of two tables in the "Teste_1291" database. One table, configured with a case-insensitive (CI) collation, allows for case-insensitive string comparisons. The other table lacks a specific collation, resulting in case-sensitive (CS) string comparisons.

The first phase highlights the distinction between case-insensitive and case-sensitive queries. In the case-insensitive table, data 'Joao' and 'joao' are inserted, and a query retrieves both records using "SELECT * WHERE Nome = 'Joao';" due to the case-insensitive collation. In the case-sensitive table, a similar query using collation "Latin1_General_CS_AS" returns only the 'Joao' record.

The second phase involves altering collations for specific columns in two tables to "Latin1_General_CI_AI," enabling case-insensitive and accent-insensitive comparisons and sorting.

Following these changes, the database collation is verified using "SELECT DATABASEPROPERTYEX('Teste_1291', 'Collation') AS Collation."

The final phase includes a complex query manipulating columns, where the condition "CONVERT(varchar, ds_titulo_portal) IS NULL" may be collation-dependent. Adjustments are suggested as necessary.





