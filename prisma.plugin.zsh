function listPrismaGCompletions {
  if [[ ${#words[@]} == 2 ]]; then
    reply=(
      init
      generate
      db
      migrate
      studio
      format
      --preview-feature
      -h --help
      -v --version
    )
  else
    case $words[2] in
    generate)
      reply=(
        -h --help
        --schema
        --watch
      )
      ;;
    db)
      reply=(
        -h --help
        --schema
        --preview-feature
        pull
        push
        seed
      )
      ;;
    migrate)
      reply=(
        -h --help
        --schema
        dev
        reset
        deploy
        status
        resolve
      )
      ;;
    studio)
      reply=(
        -h --help
        --schema
        -p --port
        -b --browser
        -n --hostname
      )
      ;;
    format)
      reply=(
        -h --help
        --schema
      )
      ;;
    esac
  fi
}

compctl -K listPrismaGCompletions prisma

alias p='prisma'
alias pi='prisma init'
alias pg='prisma generate'
alias pd='prisma db'
alias pdp='prisma db push'
alias pdl='prisma db pull'
alias pds='prisma db seed'
alias pm='prisma migrate'
alias pmd='prisma migrate dev'
alias pmr='prisma migrate reset'
alias pmy='prisma migrate deploy'
alias pms='prisma migrate status'
alias pmv='prisma migrate resolve'
alias po='prisma studio'
alias pf='prisma format'
