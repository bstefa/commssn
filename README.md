# commssn
A set of Ansible tools for commissioning new development machines

## Usage
To commission a new device follow these steps:

1. Create a new SSH key pair
   ```bash
   ssh-keygen -t ed25519 -f id_ed25519
   ```
   and provide the public key to GitHub so you can authenticate.

2. Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip) with pip.
   ```bash
   curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
   python get-pip.py --user
   rm get-pip.py
   ```
   
3. Clone this repo.
   ```bash
   git clone git@github.com:brahste/commssn.git
   cd commssn
   ```
   
4. Set your hosts.
   ```bash
   ./setup
   ```
   
4. Commission the device.
   ```
   ./commision
   ```

5. Tweak terminator's (`Ctrl+Alt+T`) colours and fonts.

6. Install your Nvim packages with `:PackerSync`.

Voila! Your new device is set up, now go make some bugs.
