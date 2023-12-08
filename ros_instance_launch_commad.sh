# official cloud-init
multipass launch 22.04 --name ros2-humble --disk 50g --memory 8g --cpus 6
multipass launch 20.04 --name ros-noetic --disk 50g --memory 8g --cpus 6

# customized cloud-init
multipass launch 22.04 --name ros2-humble --cloud-init /Users/han/ubuntu/multipass/MultipassBlueprint/cloud-init-ros2-humble-desktop.yaml --disk 60g --memory 8g --cpus 6 --timeout 108000 -vvvv
multipass launch 20.04 --name ros-noetic --cloud-init /Users/han/ubuntu/multipass/MultipassBlueprint/cloud-init-ros-noetic-desktop.yaml --disk 60g --memory 8g --cpus 6 --timeout 108000 -vvvv