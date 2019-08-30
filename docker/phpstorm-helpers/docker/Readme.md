# Expose `Docker API`
To expose `Docker API` for PHPStorm connection run `sh expose-dockerd.sh` inside VM.

Then go to PHPStorm `File > Settings > Build, Execution, Deployment > Docker`

Set to use `TCP Socket` with `tcp://VM-IP:2376` (i.e. `tcp://192.168.33.100:2376`)

Add `path mappings` and `certificate folder` (may specify as `PROJECT_ROOT/.vagrant/machines/default/virtualbox`). 

### As a result

You will be able to access docker container logs through PHPStorm UI.
