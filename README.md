# Serverless Twitter Video Downloader
**A Serverless Twitter Video Downloader. Built on Knative Eventing and Serving**


## Setup
### Twitter Source (Eventing)
Add your Twitter API keys in `Eventing-Secret.yaml` file in `deploy/` folder.

Check `Eventing-Secret.yaml.example` file in `deploy/` for reference

#### Query
Add your Twitter search query as `QUERY` parameter in `Eventing-ConfigMap.yaml` \
`QUERY` is taken as an environment variable in the application.\
By default `QUERY` is set to `Knative-Download-Video` in the `configmap`


### Sending Tweets (Serving)
Add your Twitter API keys in `Serving-Secret.yaml` file in `deploy/` folder.
Add Base64 of you twitter handle in lower case in `SELF_HANDLE`

Check `Serving-Secret.yaml.example` file in `deploy/` for reference


_All the secrets should be in `base64` format in the `*-Secret.yaml`_ \
_P.S. your secrets file should always be gitignored and dockerignored to avoid leaking secrets_




