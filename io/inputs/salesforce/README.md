## Salesforce input examples

- [basic_salesforce_job.json](basic_salesforce_job.json) - Example Mitto `io` job using a Salesforce CRM API endpoint as an input and a database table as an output. This job uses the Salesforce fields `Id` and `SystemModstamp` for upsert.
- [salesforce_soql_job.json](salesforce_soql_job.json) - Example Mitto `io` job using a Salesforce CRM API endpoint as an input and a database table as an output. This job uses the Salesforce fields `Id` and `SystemModstamp` for upsert. This job uses a [Salesforce SOQL query](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql.htm) instead of pulling all data from a Salesforce object.
  
## Salesforce credentials examples
- [salesforce_credentials_security_token.json](salesforce_credentials_security_token.json) - Example Mitto Salesforce credentials using username, password, and security token for authentication.
- [salesforce_credentials_organization_id.json](salesforce_credentials_organization_id.json) - Example Mitto Salesforce credentials using username, password, and [IP-whitelisted](https://developer.salesforce.com/docs/atlas.en-us.securityImplGuide.meta/securityImplGuide/security_networkaccess.htm) organization id for authentication.

## Mitto Documentation
- [Mitto Salesforce Input](https://www.zuar.com/help/mitto/salesforce/)

