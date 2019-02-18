# Repo Cloner
## For Producer-Consumer Demo

This repo is designed to create a new repo and import specifically from: AdamCavaliere/Consumer-Repo

**On a Create**, it will create the brand new repo, based on the variable name you give, and then import into it from the Consumer-Repo.

**On a Detroy**, it will wipe out the repo specified under "new_git_repo"

To get started you need to provide these terraform variables:

  * **git_user** = Either your username or Org Name under which this will create the new repo.
  * **new_git_repo** = The name of the new repo you want to create.
  * **git_token** = This token must have the rights to create and import repos, along with the ability to delete them.
  

