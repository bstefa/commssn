# commssn

A set of Ansible tools for commissioning new development machines.

The software configuration is broken into two stages:

1. Comissioning (Ansible)

2. Configuration (Syncthing)

## Usage

### Stage 1: Commissioning

> Tested on Ubuntu 20.04 (focal)

Depending on your system, some of these steps may be optional.

1. Update and upgrade your APT sources and install some required packages
   
   ```bash
   sudo apt update && sudo apt upgrade
   sudo apt install -y git curl 
   sudo apt install -y python3-distutils python3-testresources
   ```

2. Create a new SSH key pair
   
   ```bash
   ssh-keygen -t ed25519
   ```
   
   and provide the public key to GitHub so you can authenticate.

3. Clone this repo.
   
   ```bash
   git clone git@github.com:brahste/commssn.git .commssn
   cd .commssn
   ```

4. Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip) with pip.
   
   ```bash
   curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
   python3 get-pip.py --user
   python3 -m pip install --user ansible
   rm get-pip.py
   ```

5. Set your hosts.
   
   ```bash
   sudo ./setup
   ```

6. Commission the device (export the path to Ansible if not done already).
   
   ```bash
   export PATH=$PATH:$HOME/.local/bin
   ./commission
   ```

7. Restart you Zsh session with `exec zsh`

By the end of these steps your terminal will look pretty bare, you need to configure and sync with existing devices to get your system back up to its expected state.

### Stage 2: Configuration

1. Install [Syncthing](https://syncthing.net/).
   
   ```bash
   sudo apt install syncthing
   ```

2. Run Syncthing and add your new device to the set of nodes (see [Getting Started: Syncthing documentation](https://docs.syncthing.net/intro/getting-started.html#getting-started)).

3. Once your device is synced, go to *~/.braden-home-overlay* and set up you symlinks.
   
   ```bash
   cd ~/.braden-home-overlay
   ./setup_symlinks
   ```

4. Install your Nvim packages with `:PackerSync`.

Voila! Your new device is set up, now go make some bugs.

# 
