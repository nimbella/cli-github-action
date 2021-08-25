# [Nimbella](https://nimbella.com/) CLI Github Action

This [Github Action](https://docs.github.com/en/actions) installs the [Nimbella CLI](https://docs.nimbella.com/install/) in the Action environment, authenticates against a chosen namespace and (optionally) auto-deploys the local directory to the platform.

## Inputs

## `nim_auth_token`

**Required** [Authentication token](https://docs.nimbella.com/nim-cmds/auth#nim-auth-export-namespace) for Nimbella platform namespace.

## `auto_deploy`

Auto-deploy project from current directory. Default: `true`.

## `nim_cli_options`

Optional CLI parameters to use with `nim project deploy` command.

## Example usage

```yaml
uses: nimbella/cli-github-action
with:
  nim_auth_token: '<AUTH_TOKEN>'
```

*Authentication tokens can be generated using the `nim auth export--non-expiring` command.*