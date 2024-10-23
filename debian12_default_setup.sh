#!/bin/bash

# Skript zur Standard-Einrichtung von Debian 12

# Update und Upgrade des Systems
echo "System aktualisieren..."
apt-get update && apt-get upgrade -y

# Nützliche Pakete installieren
echo "Nützliche Pakete installieren: curl, bpytop, net-tools, iftop, htop, git, vim, sudo"
apt-get install -y curl bpytop net-tools iftop htop git vim sudo

# Alias hinzufügen
echo "Alias für 'll' hinzufügen..."
echo "alias ll='ls $LS_OPTIONS -l'" >> ~/.bashrc

# Bash-Completion für einfachere Befehlsvervollständigung aktivieren
echo "Bash-Completion installieren..."
apt-get install -y bash-completion
echo "Bash-Completion in der .bashrc aktivieren..."
echo "[ -f /etc/bash_completion ] && . /etc/bash_completion" >> ~/.bashrc

# Nützliche Systeminfos in der Bash anzeigen (optional)
echo "Nützliche Systeminfos zur Bash hinzufügen..."
echo 'echo -e "\nWillkommen auf $(hostname), $(whoami)!"' >> ~/.bashrc
echo 'echo -e "Datum: $(date)"' >> ~/.bashrc
echo 'echo -e "Systemlast: $(uptime)"' >> ~/.bashrc

# Swap-Nutzung anzeigen (nützlich bei eingeschränktem RAM)
echo "Swap-Nutzung anzeigen..."
echo "alias swapinfo='swapon --show'" >> ~/.bashrc

# Netzwerk-Konfiguration anzeigen (nützlich bei Netzwerktests)
echo "Alias für Netzwerk-Info hinzufügen..."
echo "alias netinfo='ifconfig -a'" >> ~/.bashrc

# Letzte Shell-Änderungen anwenden
echo "Shell-Änderungen übernehmen..."
source ~/.bashrc

# Fertig
echo "Debian 12 wurde erfolgreich eingerichtet!"
