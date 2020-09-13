# SSM Parameter Manager

Get and set AWS SSM parameters.

## Installation

Install from pypi:

```sh
pip install ssmpm
```

Install from github:

```sh
pip install git+https://git@github.com/craighurley/ssmpm.git
```

## Usage

```
Usage:
    ssmpm get [-s] [-p AWS_PROFILE]
    ssmpm set FILE [-d] [-p AWS_PROFILE]
    ssmpm (-h | --help)
    ssmpm (-v | --version)

Arguments:
    get           Get parameters.
    set           Create/update/delete parameters.
    FILE          Path to file that contains parameters.

Options:
    -d            Perform a dryrun.
    -h --help     Show this screen.
    -p PROFILE    AWS profile to use.
    -s            Get secret value.
    -v --version  Show version.
```

### FILE Format

`ssmpm` determines what to do with an entry based on the first character(s).  Examples work best to describe the options:

```
#ignored=true
/create/string1=foo
*/create/securestring1=password1
!/create/string2/but/do/not/update=foo
!*/create/securestring2/but/do/not/update=password2
-/delete/string1=
-*/delete/securestring1=
-!/delete/string2=
-!*/delete/securestring2=
```

## Links

- <https://docs.aws.amazon.com/cli/latest/reference/ssm/>
