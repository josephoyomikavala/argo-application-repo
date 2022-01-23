 #!/bin/bash
apt-get update && apt-get -y install gettext
git clone https://github.com/josephoyomikavala/manifest-repo.git
git config --global user.name josephoyomikavala
git config --global user.email "joseph.oyomi@kevala.com"
cd manifest-repo/templates
envsubst < application-template.yaml > ../application.yaml
cd ..
git add -A
git commit -m 'batmans commit' && git push https://github.com/josephoyomikavala/manifest-repo.git main

# git push 'https://source.developers.google.com/p/$PROJECT_ID/r/my-repo' master