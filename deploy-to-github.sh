#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting GitHub Pages deployment process...${NC}"

# Step 1: Check if we have the right vite config
if [ ! -f "vite.config.github.ts" ]; then
    echo -e "${RED}Error: vite.config.github.ts not found!${NC}"
    exit 1
fi

# Step 2: Use the GitHub Pages specific Vite config
echo -e "${YELLOW}Creating production build with GitHub Pages configuration...${NC}"
cp vite.config.github.ts vite.config.ts

# Step 3: Build the project
echo -e "${YELLOW}Building project...${NC}"
npm run build

if [ $? -ne 0 ]; then
    echo -e "${RED}Build failed! Check for errors above.${NC}"
    exit 1
fi

# Step 4: Create or switch to gh-pages branch
echo -e "${YELLOW}Creating/switching to gh-pages branch...${NC}"
git checkout gh-pages 2>/dev/null || git checkout -b gh-pages

# Step 5: Clear the branch for new content
echo -e "${YELLOW}Clearing branch for new content...${NC}"
git rm -rf . 2>/dev/null || true

# Step 6: Copy the build files to the root
echo -e "${YELLOW}Copying build files to root...${NC}"
mkdir -p temp_dist
cp -r dist/* temp_dist/
cp -r temp_dist/* .
rm -rf temp_dist

# Step 7: Add .nojekyll file to prevent Jekyll processing
echo -e "${YELLOW}Creating .nojekyll file...${NC}"
touch .nojekyll

# Step 8: Commit and push changes
echo -e "${YELLOW}Committing changes...${NC}"
git add .
git commit -m "Deploy to GitHub Pages"

echo -e "${YELLOW}Pushing to GitHub...${NC}"
git push origin gh-pages --force

# Step 9: Switch back to main branch
echo -e "${YELLOW}Switching back to main branch...${NC}"
git checkout main

echo -e "${GREEN}Deployment complete!${NC}"
echo -e "${GREEN}Your site should be available at: https://trxsta.github.io/portfolio_react/${NC}"
echo -e "${YELLOW}Note: It may take a few minutes for GitHub Pages to update.${NC}"