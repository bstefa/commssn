# commssn

A set of Ansible tools for commissioning new development machines.

The software configuration is broken into two stages:

1. Comissioning (Ansible)

2. Configuration (Syncthing)

## Usage

### Stage 1: Commissioning

Depending on your system, some of these steps may be optional.

1. Create a new SSH key pair
   
   ```bash
   ssh-keygen -t ed25519 -f id_ed25519
   ```
   
   and provide the public key to GitHub so you can authenticate.

2. Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip) with pip.
   
   ```bash
   curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
   python3 get-pip.py --user
   python3 -m pip install --user ansible
   rm get-pip.py
   ```

3. Clone this repo.
   
   ```bash
   git clone git@github.com:brahste/commssn.git
   cd commssn
   ```

4. Set your hosts (root privilages required).
   
   ```bash
   ./setup
   ```

5. Commission the device.
   
   ```
   ./commision
   ```
   
6. Restart you Zsh session with `exec zsh`

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

3. Install your Nvim packages with `:PackerSync`.

Voila! Your new device is set up, now go make some bugs.
