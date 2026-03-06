# GitHub Repository Setup Guide for badscarz

## Step-by-Step Instructions

### 1. Create the GitHub Repository

1. **Navigate to GitHub:**
   - Go to https://github.com/new
   - Make sure you're logged in to your `badscarz` account

2. **Repository Details:**
   - **Repository name:** `h1iy-hub`
   - **Description:** `h1iy Hub - A powerful debugging suite for Roblox`
   - **Public/Private:** Choose based on your preference
   - **Initialize with:** Check "Add a README file"
   - **Add .gitignore:** Select Lua (optional)
   - **Choose a license:** Select MIT License

3. **Create Repository:**
   - Click the green "Create repository" button

### 2. Clone the Repository Locally

Open your terminal/command prompt and run:

```bash
# Clone the repository
git clone https://github.com/badscarz/h1iy-hub.git

# Navigate into the repository
cd h1iy-hub
```

### 3. Prepare Your Files

1. **Copy the files from this zip:**
   - Extract the h1iy-hub zip file
   - Copy ALL files into the cloned repository folder
   - Make sure you include:
     - main.lua
     - build.py
     - modules/ folder with all .lua files
     - logo.png
     - README.md
     - LICENSE
     - LINK_SETUP.md
     - GITHUB_SETUP.md (this file)

2. **Update Links (see LINK_SETUP.md):**
   - Edit main.lua to update Discord server link
   - Edit README.md to update Discord server link
   - Verify the repository name is correct

### 4. Commit Your Changes

```bash
# Check what files are ready to be committed
git status

# Add all files
git add .

# Commit with a descriptive message
git commit -m "Initial commit: h1iy Hub debugging suite"
```

### 5. Push to GitHub

```bash
# Push to the main branch
git push origin main
```

### 6. Verify Your Repository

1. Go to https://github.com/badscarz/h1iy-hub
2. Verify all files are present
3. Check that the README displays correctly
4. Ensure the LICENSE file is present

### 7. Create a Release (Optional)

To create a downloadable release:

1. Go to your repository on GitHub
2. Click "Releases" on the right sidebar
3. Click "Create a new release"
4. Tag version: `v1.0.0`
5. Release title: `h1iy Hub v1.0.0`
6. Description: Add release notes
7. Build the script locally:
   ```bash
   python3 build.py
   mv out.lua h1iy-hub-v1.0.0.lua
   ```
8. Attach `h1iy-hub-v1.0.0.lua` to the release
9. Click "Publish release"

### 8. Repository Settings (Optional)

**Enable GitHub Pages (for documentation):**
1. Go to repository Settings
2. Click "Pages" in the sidebar
3. Source: Deploy from a branch
4. Branch: main
5. Click Save

**Configure repository visibility:**
- Public: Anyone can see and clone
- Private: Only you and collaborators can access

**Enable issues and discussions:**
1. Go to Settings > General
2. Scroll to "Features"
3. Enable/disable based on your needs

## Common Commands Reference

```bash
# Check current branch
git branch

# View commit history
git log --oneline

# View remote repository
git remote -v

# Pull latest changes
git pull origin main

# Create a new branch
git checkout -b feature-name

# Merge branches
git checkout main
git merge feature-name

# Delete a branch
git branch -d feature-name
```

## Troubleshooting

### Authentication Issues
If you encounter authentication errors:
```bash
# Configure git credentials
git config --global user.name "badscarz"
git config --global user.email "your-email@example.com"
```

### Push Failures
If push fails:
```bash
# Force push (use with caution)
git push origin main --force

# Or pull first then push
git pull origin main --rebase
git push origin main
```

### File Already Exists
If git complains about files:
```bash
# Remove git from the folder and reinitialize
rm -rf .git
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/badscarz/h1iy-hub.git
git push -u origin main
```

## Next Steps

After setting up your repository:
1. Create a detailed README with screenshots
2. Set up issue templates
3. Add contribution guidelines
4. Create a Discord community
5. Share with the community

## Support

For issues with setup:
- Check GitHub documentation: https://docs.github.com
- Use GitHub Support: https://support.github.com
- Consult your Discord community

---

**Repository URL:** https://github.com/badscarz/h1iy-hub  
**Owner:** badscarz  
**Repository:** h1iy-hub