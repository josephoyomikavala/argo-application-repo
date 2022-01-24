 #!/bin/bash
apt-get update && apt-get -y install gettext
git clone https://github.com/josephoyomikavala/manifest-repo.git
git config --global user.name josephoyomikavala
git config --global user.email "joseph.oyomi@kevala.com"
cd manifest-repo/templates
envsubst < application-template.yaml > ../source/application.yaml
cd ..
git config remote.origin.url "https://$github_access_token@github.com/josephoyomikavala/manifest-repo.git"
git add .
git commit -m 'tag commit' && git push

