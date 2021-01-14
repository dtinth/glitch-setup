set -eo pipefail
git config user.email dtinth@spacet.me
echo meow

GH_PROJECT=$(/opt/nvm/versions/node/v14/bin/node -e "try{console.log(JSON.parse(process.argv[1]).targetRepo)}catch(e){console.error(e)}" -- "$(curl -L https://raw.githubusercontent.com/dtinth/glitch-synchronizer/master/projects/$PROJECT_DOMAIN.config.json)")
GH_URL="https://github.com/$GH_PROJECT.git"
if [ -n "$GH_PROJECT" ]; then git remote add gh "$GH_URL" || git remote set-url gh "$GH_URL"; fi
