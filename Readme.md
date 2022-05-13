Openport Client - Official Docker Image
===

About:
---
The official client image for openport.io.
For more info, visit https://openport.io

Usage:
---

```shell
 docker run -it --network host -e PORT=22 -e KEY_TOKEN=XXX -e KEY_NAME=my_key openport
```

Environment Flags
---
```shell
PORT (required): Port to share

KEY_TOKEN (optional, but adviced): Token to register your key to your account. See https://openport.io/user/keys 

KEY_NAME (optional, but adviced): Name to give to your key (if using KEY_TOKEN).
```