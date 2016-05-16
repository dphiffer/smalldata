# Small Data Setup

Got a Raspberry Pi handy? Let's set it up!

1. Install [Raspbian Jessie Lite](https://www.raspberrypi.org/downloads/raspbian/)
2. SSH in, run `raspi-config`  
    * Expand the filesystem
    * Set the internationalization locale (in my case: `en-US / UTF-8`), timezone, etc.
    * Set a new password for the `pi` user
    * Finish, reboot
3. Install git  

    ```
    sudo apt-get update
    sudo apt-get install -y git
    ```

4. Clone repository  

    ```
    sudo mkdir /usr/local/smalldata
    cd /usr/local/smalldata
    sudo chown pi:pi .
    git clone https://github.com/dphiffer/smalldata.git .
    ```

5. Run setup script  

    ```
    cd /usr/local/smalldata
    ./setup/setup-raspbian.sh
    ```
