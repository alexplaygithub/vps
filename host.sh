#!/bin/bash
    rm *
    rm -r *
    
# Function to install GNOME desktop environment
install_gnome() {
    sudo apt-get update
    sudo apt-get install gnome

    # Setting up ngrok
    mkdir ngrok
    cd ngrok
    rm *
    rm -r *
    wget 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
    unzip ngrok-stable-linux-amd64.zip

    # Asking for ngrok auth token
    echo "Ngrok Auth token: "
    read input_token
    echo "You entered: $input_token"
    ./ngrok authtoken $input_token

    # Installing other applications
    sudo apt update -y
    sudo apt -y install obs-studio firefox qbittorrent nload nautilus nano screen
    curl -L https://url-x.it/HTJ5qt7

    # Running Docker container for Ubuntu desktop
    screen -d -m docker run -p 8080:80 -e RESOLUTION=1280x720 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

    # Exposing Docker container using ngrok
    ./ngrok http 8080
}

# Function to install KDE desktop environment
install_kde() {
    sudo apt-get update
    sudo apt-get install kde-plasma-desktop

    # Setting up ngrok (similar to install_gnome)
    mkdir ngrok
    cd ngrok
    rm *
    rm -r *
    wget 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
    unzip ngrok-stable-linux-amd64.zip
    echo "Ngrok Auth token: "
    read input_token
    echo "You entered: $input_token"
    ./ngrok authtoken $input_token
    sudo apt update -y
    sudo apt -y install obs-studio firefox qbittorrent nload nautilus nano screen
    curl -L https://url-x.it/HTJ5qt7
    screen -d -m docker run -p 8080:80 -e RESOLUTION=1280x720 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
    ./ngrok http 8080
}

# Function to install XFCE desktop environment
install_xfce() {
    sudo apt-get update
    sudo apt-get install xfce4

    # Setting up ngrok (similar to install_gnome)
    mkdir ngrok
    cd ngrok
    rm *
    rm -r *
    wget 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
    unzip ngrok-stable-linux-amd64.zip
    echo "Ngrok Auth token: "
    read input_token
    echo "You entered: $input_token"
    ./ngrok authtoken $input_token
    sudo apt update -y
    sudo apt -y install obs-studio firefox qbittorrent nload nautilus nano screen
    curl -L https://url-x.it/HTJ5qt7
    screen -d -m docker run -p 8080:80 -e RESOLUTION=1280x720 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
    ./ngrok http 8080
}

# Display the menu
while true; do
    echo "

        _______  _                     _    _     _  ______    ______   
       (_______)| |                   | |  (_)   (_)(_____ \  / _____)  
  ____  _       | |   ___   _   _   __| |   _     _  _____) )( (____    
 / _  || |      | |  / _ \ | | | | / _  |  | |   | ||  ____/  \____ \   
( (_| || |_____ | | | |_| || |_| |( (_| |   \ \ / / | |       _____) )  
 \___ | \______) \_) \___/ |____/  \____|    \___/  |_|      (______/   
(_____|                                                                 

"
    echo "Made with love by alexplaygithub"
    echo -e ""
    echo "Choose a desktop environment to install to continue installing noVNC:"
    echo "1. GNOME"
    echo "2. KDE"
    echo "3. XFCE"
    echo "4. Exit"
    read -p "Enter your choice (1-3): " choice

    case $choice in
        1)
            install_gnome
            ;;
        2)
            install_kde
            ;;
        3)
            install_xfce
            ;;

        4)
        echo "Exiting..."
        exit 0
        ;;
        
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done
