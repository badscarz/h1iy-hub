# Link Setup Guide for h1iy Hub

## Overview
This document explains all the links and placeholders you need to update in the h1iy Hub project.

## Files to Edit

### 1. main.lua
**Line ~139:**
```lua
Main.GitRepoName = "badscarz/h1iy-hub"
```
This is the GitHub repository path. Update if your repository name is different.

**Lines ~16-17 (in header comment):**
```lua
-- If you want more info, join the community server: [PLACEHOLDER: Your Discord Server Link]
```
Replace `[PLACEHOLDER: Your Discord Server Link]` with your actual Discord server invite URL.

### 2. README.md
**Under "Community Server" section:**
```
[PLACEHOLDER: Your Discord Server Link Here]
```
Replace with your actual Discord server invite URL.

## GitHub Repository Setup

### Step 1: Create the Repository
1. Go to https://github.com/new
2. Repository name: `h1iy-hub`
3. Description: `h1iy Hub - A powerful debugging suite for Roblox`
4. Choose Public or Private as needed
5. Click "Create repository"

### Step 2: Clone and Setup
```bash
git clone https://github.com/badscarz/h1iy-hub.git
cd h1iy-hub
```

### Step 3: Copy Files
Copy all files from this zip to the cloned repository folder.

### Step 4: Update Links
Edit the files mentioned above with your actual links.

### Step 5: Commit and Push
```bash
git add .
git commit -m "Initial commit: h1iy Hub"
git push origin main
```

## Discord Server Setup

1. Go to your Discord server settings
2. Go to "Instant Invite" or "Invite People"
3. Create an invite link
4. Copy the invite URL (format: https://discord.gg/XXXXXX)
5. Update the placeholder in main.lua and README.md with this URL

## Additional Configuration

### Custom Branding
If you want to further customize the branding:
- Logo: Replace `logo.png` with your custom logo
- Colors: Modify theme colors in the DefaultSettings section of main.lua
- Window Title: The "h1iy" text appears in multiple places in the GUI definition

### Release Version
When building with `build.py`, the output file `out.lua` can be renamed for releases:
```bash
mv out.lua h1iy-hub-v1.0.lua
```

## Verification Checklist
- [ ] Repository name matches `badscarz/h1iy-hub`
- [ ] Discord server link updated in main.lua header
- [ ] Discord server link updated in README.md
- [ ] All references to "Dex", "zinnia", and "Moon" replaced
- [ ] Repository successfully pushed to GitHub
- [ ] Links are working and accessible

## Support
For questions or issues, refer to your Discord server or GitHub issues.