#!/bin/sh

screen_name="mc"

# Start a new detached screen session
screen -dmS $screen_name

# Run the infinite loop inside the screen session
screen -S $screen_name -X stuff "#!/bin/bash\nwhile true; do\n  java -Xmx3G -jar server.jar nogui\n  echo \"Server crashed! Waiting 30 seconds before restarting...\"\n  sleep 30\ndone\n"

# To attach to the screen session, use: screen -r mc
echo "The Minecraft server is running inside the screen session '$screen_name'."
