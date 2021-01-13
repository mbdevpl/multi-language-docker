# docker-usable-ubuntu

all: 18.04 20.04 latest

rebase: 18.04-rebase 20.04-rebase latest-rebase

18.04-rebase:
	git checkout 18.04
	git rebase master
	git checkout master

18.04:
	git checkout 18.04
	time sudo docker build --no-cache --pull -t mbdevpl/usable-ubuntu:18.04 .
	time sudo docker push mbdevpl/usable-ubuntu:18.04

20.04-rebase:
	git checkout 20.04
	git rebase master
	git checkout master

20.04:
	git checkout 20.04
	time sudo docker build --no-cache --pull -t mbdevpl/usable-ubuntu:20.04 .
	time sudo docker push mbdevpl/usable-ubuntu:20.04

latest-rebase:
	git checkout latest
	git rebase master
	git checkout master

latest:
	git checkout latest
	time sudo docker build --no-cache --pull -t mbdevpl/usable-ubuntu:latest .
	time sudo docker push mbdevpl/usable-ubuntu:latest

clean:
	sudo docker image rm mbdevpl/usable-ubuntu:18.04 || :
	sudo docker image rm mbdevpl/usable-ubuntu:20.04 || :
	sudo docker image rm mbdevpl/usable-ubuntu:latest || :
