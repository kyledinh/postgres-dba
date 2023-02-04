# Postgres DBA

- [Software Versions](#software-versions)
- [Onboarding](#onboarding)
- [Usage Guides](#usage-guides)

<br><hr><br>

## Software Versions
Use `make check` to see currently installed versions. Theses are the version used to build this repository:

| Software | Version                                                     |
|----------|-------------------------------------------------------------|
| Bash     | GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin21) |
| Docker   | Docker version 20.10.17, build 100c701                      |
| Make     | GNU Make 3.81                                               |
| VSCode   | 1.75.0 e2816fe719a4026ffa1ee0189dc89bdfdbafb164 x64         |

<br><hr><br>

## Onboarding

- [Install Docker](https://docs.docker.com/get-docker/)
- Run Docker `make docker-up`
- Initial Database Migration `make postgres-seed`
- Check the database `make postgres-check`

<br><hr><br>

## Usage Guides
> For various roles there will be various guides, the admim-guide or the dev-guide will provide the typical usage. Or look in the [Makefile](./Makefile) for the most common targets/actions.

- [Admin Guide](./docs/guides/admin-guide.md)
- [Developer Guide](./docs/guides/dev-guide.md)
- [Makefile Guide](./docs/guides/makefile-guide.md) - Common task and scripts
- [Markdown Guide](./docs/guide/markdown-guide.md) - Style guide for documentation with Markdown