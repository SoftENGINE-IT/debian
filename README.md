# Debian 12 Standard-Einrichtung

Dieses Skript richtet ein Debian 12 System standardmäßig ein. Es installiert nützliche Tools, fügt hilfreiche Konfigurationen hinzu und bereitet das System für die tägliche Nutzung und Administration vor.

## Verwendung

1. Lade das Skript herunter oder klone dieses Repository.
2. Mach das Skript ausführbar und führe es aus:

```bash
chmod +x debian12_default_setup.sh
./debian12_default_setup.sh
```

## Funktionen des Skripts

Das Skript führt folgende Aktionen aus:

1. **System aktualisieren**:
   - Führt ein `apt-get update` und `apt-get upgrade -y` aus, um das System auf den neuesten Stand zu bringen.
   
2. **Installation von nützlichen Paketen**:
   - Installiert nützliche Pakete wie:
     - `curl`: Ein leistungsstarkes Tool zur Datenübertragung.
     - `bpytop`: Ein Systemmonitor mit einer modernen grafischen Oberfläche.
     - `net-tools`: Tools wie `ifconfig`, um Netzwerk-Schnittstellen zu verwalten.
     - `iftop`: Echtzeit-Netzwerk-Monitoring.
     - `htop`: Interaktiver Prozessmonitor.
     - `git`: Versionskontrollsystem.
     - `vim`: Leistungsstarker Texteditor.
     - `sudo`: Bietet Superuser-Berechtigungen für nicht-root Benutzer.

3. **Alias hinzufügen**:
   - Fügt `ll` als Alias für einen erweiterten `ls`-Befehl (`ls -l`) in die `.bashrc` ein.

4. **Vim als Standard-Editor**:
   - Setzt Vim als Standard-Texteditor, um die Bearbeitung von Dateien auf der Konsole zu erleichtern.

5. **Bash-Completion**:
   - Installiert und aktiviert Bash-Completion, um die Befehlsvervollständigung in der Bash zu ermöglichen.

6. **Systeminformationen beim Login**:
   - Zeigt bei jedem Login eine Willkommensnachricht, das aktuelle Datum und die Systemlast an.

7. **Swap-Nutzung anzeigen**:
   - Fügt einen Alias `swapinfo` hinzu, um schnell Informationen zur Swap-Nutzung abzurufen.

8. **Netzwerk-Info**:
    - Fügt einen Alias `netinfo` hinzu, um mit einem Befehl die Netzwerk-Konfiguration anzeigen zu lassen (`ifconfig`).
