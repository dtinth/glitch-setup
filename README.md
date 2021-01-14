# glitch-setup

I run this script when setting up new Glitch projects:

```sh
curl -L https://raw.githubusercontent.com/dtinth/glitch-setup/main/setup.sh | bash -x
```

It will:

- Set up committer email to myself
- Set up Git remote to GitHub if there is a corresponding entry in [glitch-synchronizer](https://github.com/dtinth/glitch-synchronizer)
