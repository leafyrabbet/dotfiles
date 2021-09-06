# Google Cloud SDK
#
# Reference:
# - https://cloud.google.com/sdk/docs/install
#
# Install:
# `GCLOUD_SDK_VERSION=355.0.0 && curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_SDK_VERSION}-darwin-x86_64.tar.gz -o ~/google-cloud-sdk-${GCLOUD_SDK_VERSION}-darwin-x86_64.tar.gz`
if [ -f '/usr/local/opt/google-cloud-sdk/path.bash.inc' ]; then
  . '/usr/local/opt/google-cloud-sdk/path.bash.inc';
fi

if [ -f '/usr/local/opt/google-cloud-sdk/completion.bash.inc' ]; then
  . '/usr/local/opt/google-cloud-sdk/completion.bash.inc';
fi

