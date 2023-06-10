## GiHub configuration

- Add ssh key: https://jdblischak.github.io/2014-09-18-chicago/novice/git/05-sshkeys.html

### `git-credential-manager`

Install: https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md

Configure each repo: 

```bash
cd <local_dir_repo>
git-credential-manager configure
```

 Check credentials:

```bash
cd <local_dir_repo>
git config user.name 
git config user.email
```
