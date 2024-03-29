
.PHONY: check, deploy

default:
	@echo -e "Available options are:\n"
	@echo -e "\tchekck\t- to check for dependencies"
	@echo -e "\tdeploy\t- to deploy to host"

check:
	@command -v ssh >/dev/null 2>&1 || { echo "ERROR: please install ssh"; exit 1; }
	@command -v rsync >/dev/null 2>&1 || { echo "ERROR: please install rsync"; exit 1; }
	@[ -d "_site" ] || { echo "ERROR: Missing the _site folder."; exit 1; }


deploy: check
	rsync --compress --recursive --checksum --delete --itemize-changes --exclude-from exclude.rsync _site/* maciakl@maciak.org:~/maciak.org/

