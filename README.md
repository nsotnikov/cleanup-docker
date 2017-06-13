# Docker cleanup shell script (outdated)
====
Since new Docker version 1.13 is released just use:

```sh
$ docker system prune -a

WARNING! This will remove:
	- all stopped containers
	- all volumes not used by at least one container
	- all networks not used by at least one container
	- all images without at least one container associated to them
```

**WARNING!**    
**This shell script will stop and delete all docker containers, images and volumes on your host!**    
**It will not be possible to restore them!**  


## Usage 
Just execute following command in your Terminal (review [the script](https://raw.githubusercontent.com/nsotnikov/cleanup-docker/master/cleanup-docker.sh)):
```sh
bash <(curl -sL https://git.io/vDSx7)
```
This shell script will do:
  - stop and delete all docker containter
  - delete all images 
  - remove all docker volumes 

<p align="center">
<img alt="Docker cleanup shell script" src=".github/terminal-scsh.png">
</p>

## Author

Nikolaj Sotnikov - [nsotnikov@gmail.com](mailto:nsotnikov@gmail.com)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
