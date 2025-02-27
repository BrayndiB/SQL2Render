echo "Starting SQL Server..."

#!/bin/bash
# Start SQL Server, confirm that it's started up, then run the sql script
/opt/mssql/bin/sqlservr &


# Wait for SQL Server to start up
echo "Waiting for SQL Server to start..."
sleep 20s

echo "Running the initialization script..."
USER root
# Run the initialization script
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong@Password -i /usr/src/app/InitDatabase.sql

echo "Initialization script completed."

# Keep the container running
wait