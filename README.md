# Minecraft Server Auto-Restart Script

This script sets up a Minecraft server inside a `screen` session and ensures that the server automatically restarts in case of a crash. It uses an infinite loop to handle server crashes and includes a delay of 30 seconds before restarting.

## Prerequisites

- Ensure you have `screen` installed on your system. You can install it using your package manager (e.g., `apt-get install screen` on Debian/Ubuntu).
- A Minecraft server jar file (`server.jar`) must be available in the same directory as this script.

## Usage

1. Copy the script into a file, e.g., `start.sh`.
2. Make the script executable:
   ```bash
   chmod +x start.sh
   ```
3. Run the script:
   ```bash
   ./start.sh
   ```
4. To attach to the running screen session:
   ```bash
   screen -r mc
   ```
5. To detach from the session, press `Ctrl+A` followed by `D`.

## Handling a Full Server Crash

To ensure the server automatically starts after a complete system reboot, add the following line to your crontab:

```bash
@reboot /path/to/start.sh
```

You can edit your crontab with:

```bash
crontab -e
```

Replace `/path/to/start.sh` with the full path to the script.

## Notes

- The script uses a screen session named `mc`. You can change this by modifying the `screen_name` variable in the script.
- Adjust the memory allocation (`-Xmx3G`) and other Java options as needed for your server.
- Ensure proper backups and monitoring for your Minecraft server to avoid data loss.

## Disclaimer

Use this script at your own risk. Ensure you understand its functionality before deploying it in a production environment.

## License

This script is provided under the MIT License. Feel free to use, modify, and distribute it.
