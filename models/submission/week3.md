#### Week 3 Submission

### task 1
# Modifying Tests in `dim_users.yml`

In my case, I chose `dim_users`.

### Deleting Generic Tests

I deleted the generic tests found in the following files:
- `dim_users.yml`
- `stg_bingeflix_users.yml`
- `source_bingeflix.yml`

### Keeping New Tests

I only kept in `dim_users.yml` the new generic tests that are not present in:
- `stg_bingeflix_users.yml`
- `source_bingeflix.yml`

### task 2

1- Review the singular test assert_valid_event_name.sql below:
-- We have an issue with some test events appearing in our data source that we want to be notified about
-- This returns records where the event name contains 'test'

SELECT * FROM {{ ref ('stg_bingeflix__events') }}
WHERE lower(event_name) not LIKE '%test%'