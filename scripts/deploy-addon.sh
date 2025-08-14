#!/bin/bash

# COLORS
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# DETECT USERNAME
WINUSER="${USERNAME:-$USER}"

# DEVELOPMENT PACKS PATHS
DEVELOPMENT_BEHAVIOR_PACKS_PATH="C:/Users/$WINUSER/AppData/Local/Packages/Microsoft.MinecraftUWP_8wekyb3d8bbwe/LocalState/games/com.mojang/development_behavior_packs"
DEVELOPMENT_RESOURCE_PACKS_PATH="C:/Users/$WINUSER/AppData/Local/Packages/Microsoft.MinecraftUWP_8wekyb3d8bbwe/LocalState/games/com.mojang/development_resource_packs"

# ADDON INFO
ADDON_NAME="Aerell Headbands"
RP_DIR="${ADDON_NAME} - RP"
BP_DIR="${ADDON_NAME} - BP"

echo "Removing old copies..."
rm -rf "$DEVELOPMENT_RESOURCE_PACKS_PATH/$RP_DIR" && echo -e "${GREEN}Removed old resource pack successfully.${NC}" || echo -e "${RED}Failed to remove old resource pack.${NC}"
rm -rf "$DEVELOPMENT_BEHAVIOR_PACKS_PATH/$BP_DIR" && echo -e "${GREEN}Removed old behavior pack successfully.${NC}" || echo -e "${RED}Failed to remove old behavior pack.${NC}"

echo "Copying new files..."
cp -r "./addon/resource" "$DEVELOPMENT_RESOURCE_PACKS_PATH/$RP_DIR" && echo -e "${GREEN}Copied resource pack successfully.${NC}" || echo -e "${RED}Failed to copy resource pack.${NC}"
cp -r "./addon/behavior" "$DEVELOPMENT_BEHAVIOR_PACKS_PATH/$BP_DIR" && echo -e "${GREEN}Copied behavior pack successfully.${NC}" || echo -e "${RED}Failed to copy behavior pack.${NC}"

echo -e "${GREEN}All done!${NC}"