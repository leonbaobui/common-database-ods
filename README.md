# Flyway Migration Scripts Repository

This repository contains Flyway migration scripts for various services, ensuring consistent and reliable database schema management across different environments.

## Repository Structure

The repository is organized into `migrate` and `undo` directories, each containing service-specific subdirectories with Flyway scripts. This structure facilitates the management of forward and backward migrations for each service separately.

### Directory Layout

```plaintext
/
|-- migrate/
|   |-- serviceA/
|   |   |-- V1__Initial_schema.sql
|   |   |-- V2__Feature_update.sql
|   |
|   |-- serviceB/
|       |-- V1__Initial_schema.sql
|       |-- V2__Feature_update.sql
|
|-- undo/
    |-- serviceA/
    |   |-- U1__Undo_initial_schema.sql
    |   |-- U2__Undo_feature_update.sql
    |
    |-- serviceB/
        |-- U1__Undo_initial_schema.sql
        |-- U2__Undo_feature_update.sql
```


### Naming Convention

- Migrations are prefixed with `V` followed by a version number, an underscore, and a description: `V1__Initial_schema.sql`.
- Undo scripts are prefixed with `U` followed by a version number, an underscore, and a description: `U1__Undo_initial_schema.sql`.

## Best Practices

### Migration Strategy

- **Test Migrations:** Always test migration scripts in a staging environment before applying them in production.
- **Monitor Applications:** After deploying migrations, monitor applications for any issues that may arise due to database changes.

### Security

- **Access Controls:** Restrict access to the repository to authorized personnel only.
- **Sensitive Data:** Avoid hardcoding sensitive data in migration scripts. Use environment variables or secure vault solutions where necessary.

## CI/CD Integration

Continuous Integration and Continuous Deployment (CI/CD) pipelines are configured to automate the testing and deployment of migration scripts.

### CI/CD Workflow

1. **Pull Request:** Developers submit changes as pull requests.
2. **Automated Tests:** CI pipeline runs automated tests to verify the integrity of the migration scripts.
3. **Code Review:** Team reviews and approves the changes.
4. **Merge and Deploy:** On merge, the CD pipeline deploys the scripts to the appropriate database environment.

## Getting Started

To use these scripts, ensure you have Flyway installed and configured appropriately for your database. Adjust the Flyway configurations in each service directory according to your environment settings.

### Running Migrations

Navigate to the service directory and run:

```bash
flyway migrate
```

## Rolling Back Migrations

If needed, navigate to the service directory and run:

flyway undo

## Contribution

Contributions to this repository are welcome. Please adhere to the established naming conventions and structure. For major changes, please open an issue first to discuss what you would like to change.
