function brewup
  brew update

  set -lx outdated_brews (brew outdated)

  if count $outdated_brews > /dev/null
  	brew upgrade $outdated_brews
  end

	if brew list | grep -q docker-machine
		docker-machine ls -q --filter "driver=virtualbox" | xargs -L1 docker-machine stop
	end

	if brew cask list -1 | grep -q vagrant
		echo "Stopping running vagrant machines"

		vagrant global-status | grep running | awk '{print $1}' | xargs -L1 vagrant halt
	end

	if brew cask list -1 | grep -q virtualbox
		set -lx running_vms (vboxmanage list runningvms |  cut -d '{' -f 2 | cut -d '}' -f 1)

		if count $running_vms > /dev/null
			echo "Stopping running virtualbox machines"
			echo $running_vms | xargs -L1 -I {} VBoxManage controlvm {} acpipowerbutton
		end
	end

	# Skip zoom because it opens the app everytime it's installed.
	for cask in (brew cask list -1 | grep -vi zoomus)
		brew cask reinstall $cask
	end

	mas upgrade
end
