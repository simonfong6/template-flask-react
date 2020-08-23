# Template Flask React App

# Dependencies
- Docker

# Development
Run all commands at the root of the repo.

## Shortcuts
```bash
alias dev="docker-compose -f docker-compose.common.yml -f docker-compose.development.yml"
alias prod="docker-compose -f docker-compose.common.yml -f docker-compose.production.yml"
```

## Developement Server
```bash
docker-compose -f docker-compose.common.yml -f docker-compose.development.yml up
```

## Production Build
```bash
docker-compose -f docker-compose.common.yml -f docker-compose.production.yml up
```
