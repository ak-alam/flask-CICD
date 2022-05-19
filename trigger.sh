#!/bin/bash
chmod 400 id_rsa_flask.pem
git config --global user.email "alam.akbar1989@gmail.com"
git config --global user.name "akbar-alam"
git checkout main
date >> trigger
git add .
git commit -m "flask-cicd-build"
git remote set-url origin git@github.com:akbar-alam/flask-CICD.git
GIT_SSH_COMMAND="ssh -i id_rsa_flask.pem" git push origin main
