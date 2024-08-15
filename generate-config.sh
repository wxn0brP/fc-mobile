#!/bin/bash
mkdir -p fdroid-repo/repo/icons
mkdir -p fdroid-repo/metadata

cp icon.png fdroid-repo
cp icon.png fdroid-repo/repo/com.fusionchat.icon.png


cat <<EOF > fdroid-repo/config.yml
repo_author: "wxn0brP"
repo_name: "Fusion-chat"
repo_description: "Fusion chat"
repo_keyalias: "${REPO_KEYALIAS}"
repo_icon: "icon.png"
keystorepass: "${KEYSTOREPASS}"
keypass: "${KEYPASS}"
repo_url: "https://wxn0brP.github.io/fc-mobile/repo"
include:
  - "repo/*.apk"
EOF
chmod 0600 fdroid-repo/config.yml

cat <<EOL > fdroid-repo/metadata/com.fusionchat.yml
License: MIT
WebSite: https://fusion.ct8.pl
SourceCode: https://github.com/wxn0brP/fc-mobile
IssueTracker: https://github.com/wxn0brP/fc-mobile/issues
Changelog: https://github.com/wxn0brP/fc-mobile/releases

Summary: Fusion chat
Description: |-
  Fusion chat mobile client

RepoType: git
Repo: https://github.com/wxn0brP/fc-mobile

Categories:
  - Internet
  - Utilities

EOL