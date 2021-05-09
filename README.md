The Prisma plugin provides some [completions](#completions) for [Prisma CLI](https://prisma.io).

# Installation

#### [antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle AhmedElywa/zsh-prisma --branch=main` to your `~/.zshrc`.

#### [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)

- Clone the repository inside your oh-my-zsh repo:

```zsh
git clone https://github.com/AhmedElywa/zsh-prisma ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/prisma
```

- Enable it in your `.zshrc` by adding it to your plugin list and reloading the completion:

```zsh
plugins=(… prisma)
```

### Manual installation

- Clone the repository:

        git clone git://github.com/AhmedElywa/zsh-prisma.git

- Include the directory in your `$fpath`, for example by adding in `~/.zshrc`:

        fpath=(path/to/zsh-prisma $fpath)

- You may have to force rebuild `zcompdump`:

        rm -f ~/.zcompdump; compinit

# Completions

| Prisma Commands          |
| :----------------------- |
| `prisma`                 |
| `prisma init`            |
| `prisma generate`        |
| `prisma db`              |
| `prisma db push`         |
| `prisma db pull`         |
| `prisma db seed`         |
| `prisma migrate`         |
| `prisma migrate dev`     |
| `prisma migrate reset`   |
| `prisma migrate deploy`  |
| `prisma migrate status`  |
| `prisma migrate resolve` |
| `prisma studio`          |
| `prisma format`          |

| Prisma Options   |
| :---------------- |
| -h --help         |
| -v --version      |
| --preview-feature |

# Alias

| Alias | Command                  |
| :---- | :----------------------- |
| p     | `prisma`                 |
| pi    | `prisma init`            |
| pg    | `prisma generate`        |
| pd    | `prisma db`              |
| pdp   | `prisma db push`         |
| pdl   | `prisma db pull`         |
| pds   | `prisma db seed`         |
| pm    | `prisma migrate`         |
| pmd   | `prisma migrate dev`     |
| pmr   | `prisma migrate reset`   |
| pmy   | `prisma migrate deploy`  |
| pms   | `prisma migrate status`  |
| pmv   | `prisma migrate resolve` |
| po    | `prisma studio`          |
| pf    | `prisma format`          |
