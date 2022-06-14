#!/usr/bin/bash
ansible-playbook new_computer.yml --ask-become-pass
# chsh -s $(which zsh)
# exec zsh
