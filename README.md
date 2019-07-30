# [DEPRICATED] Docker cleanup shell script 
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Ftikkerei%2Fcleanup-docker.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Ftikkerei%2Fcleanup-docker?ref=badge_shield)


### **since new docker version 1.13 is released my script is depricated, please use:**

```sh
$ docker system prune -a

WARNING! This will remove:
	- all stopped containers
	- all volumes not used by at least one container
	- all networks not used by at least one container
	- all images without at least one container associated to them
```

---

**WARNING!**    
This shell script will stop and delete all docker containers, images and volumes on your host!    
It will not be possible to restore them!

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


[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Ftikkerei%2Fcleanup-docker.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Ftikkerei%2Fcleanup-docker?ref=badge_large)