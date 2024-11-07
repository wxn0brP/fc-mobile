#!/bin/bash
cp icon.png fdroid-repo
cp icon.png fdroid-repo/repo/icons/com.fusionchat.png

touch fdroid-repo/config.yml
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

touch fdroid-repo/metadata/com.fusionchat.yml
cat <<EOL > fdroid-repo/metadata/com.fusionchat.yml
License: MIT
WebSite: https://fusion.ct8.pl
SourceCode: https://github.com/wxn0brP/fc-mobile
IssueTracker: https://github.com/wxn0brP/fc-mobile/issues
Changelog: https://github.com/wxn0brP/fc-mobile/releases

Summary: Fusion chat

Description: |-
  Fusion chat is a mobile application designed to provide seamless communication and collaboration. It offers a user-friendly interface and a variety of features to enhance your chat experience.

  Features:
    - Real-time messaging
    - Group chats and private messaging
    - Media sharing (images, videos, documents)
    - Push notifications for new messages

RepoType: git
Repo: https://github.com/wxn0brP/fc-mobile

Categories:
  - Internet
  - Utilities

EOL

echo "${KEYSTORE_P12_FILE}" | base64 --decode > fdroid-repo/keystore.p12