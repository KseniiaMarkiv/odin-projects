1. **Open the PostgreSQL Command Line Interface**:
    - Run `psql` as a superuser (e.g., `postgres`) to access the PostgreSQL CLI:
      ```bash
      psql -U postgres
      ```
    - Enter the `postgres` password if prompted.

2. **Create a New Role:**
    - In the `psql` interface, create a role with login permissions and a password. Replace `<role_name>` and `<password>` with your desired role name and password:
      ```sql
      CREATE ROLE <role_name> WITH LOGIN PASSWORD '<password>';
      ```

3. **Grant Permissions:**
    - To allow this role to create databases, which is useful for Rails development, run:
      ```sql
      ALTER ROLE <role_name> CREATEDB;
      ```

4. **Exit psql:**
    - Type `\q` to exit the `psql` CLI.

5. **Use the Role in Rails:**
    - In your Rails app, update `config/database.yml` with the role's name and password to connect to PostgreSQL.

**Example**:
If you create a role named `your-name` with password `2765`, the commands would be:
```sql
CREATE ROLE your-name WITH LOGIN PASSWORD '2765';
ALTER ROLE your-name CREATEDB;
```

This role is now configured for development and testing in your Rails app.

