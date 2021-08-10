# elmah.io Create Deployment Action

GitHub Action to create a new deployment on elmah.io.

For the full documentation check out [Create deployments from GitHub Actions](https://docs.elmah.io/create-deployments-from-github-actions/).

## Inputs

## `apiKey`

**Required** An API key with permission to create deployments.

## `version`

**Required** The version number of this deployment. The value of version can be a SemVer compliant string or any other syntax that you are using as your version numbering scheme.

## `description`

Optional description of this deployment. Can be markdown or clear text.

## `userName`

The name of the person responsible for creating this deployment. This can be the name taken from your deployment server.

## `userEmail`

The email of the person responsible for creating this deployment. This can be the email taken from your deployment server.

## `logId`

As default, deployments are attached all logs of the organization. If you want a deployment to attach to a single log only, set this to the ID of that log.

## Example usage

```yml
uses: elmahio/github-create-deployment-action@v1
with:
  apiKey: ${{ secrets.ELMAH_IO_API_KEY }}
  description: ${{ github.event.head_commit.message }}
  version: ${{ github.run_number }}
  userName: ${{ github.actor }}
  logId: ${{ secrets.ELMAH_IO_LOG_ID }}
```