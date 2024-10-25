  If you encounter the error `'psql' is not recognized as an internal or external command, operable program or batch file,` follow these steps:

  1. **Confirm PostgreSQL Installation:**
     - Check if PostgreSQL is installed by searching for "PostgreSQL" in your installed programs (Windows 10).

  2. **Locate PostgreSQL Installation Path:**
     - The PostgreSQL installation path should have been saved during the installation process. If not, the default path is typically `C:\Program Files\PostgreSQL\<version>\bin`.

  3. **Add PostgreSQL to the System PATH:**
     - In the Windows search bar, type **Edit environment system** and select **System Properties**.
     - Click on **Environment Variables**.
     - In the **User variables for {your username}** section, locate `Path` and double-click it.
     - Press **New** and add the PostgreSQL `bin` directory path (e.g., `C:\Program Files\PostgreSQL\<version>\bin`).
     
  4. **Verify the Configuration:**
     - Open Command Prompt and type:
       ```bash
       psql -U postgres
       ```
     - If properly configured, this command should start the `psql` interface.

  5. **Create a PostgreSQL Role:**
    - If you need to create a PostgreSQL role for connecting with your Rails app, follow these steps in [link](https://github.com/KseniiaMarkiv/odin-projects/blob/postgres-check/postgres-app/create_role.md)

