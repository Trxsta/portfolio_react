# GitHub Pages Deployment Instructions

This project is configured for automatic deployment to GitHub Pages using GitHub Actions. Here's how to get your portfolio up and running:

## Option 1: Using GitHub Actions (Recommended)

1. Create a new repository on GitHub named `portfolio_react`
2. Push your code to the repository:

```bash
# Initialize git if not already done
git init

# Add remote
git remote add origin https://github.com/Trxsta/portfolio_react.git

# Add all files
git add .

# Commit
git commit -m "Initial commit"

# Push to main branch
git push -u origin main
```

3. Once pushed, GitHub Actions will automatically deploy your site:
   - Go to the "Actions" tab in your repository
   - You'll see the "Deploy to GitHub Pages" workflow running
   - When complete, your site will be available at: https://trxsta.github.io/portfolio_react/

4. Configure GitHub Pages (only needed once):
   - Go to Settings > Pages
   - In the "Build and deployment" section, select "GitHub Actions" as the source

## Option 2: Manual Deployment

If you prefer to deploy manually:

```bash
# Make the deployment script executable
chmod +x deploy-to-github.sh

# Run the deployment script
./deploy-to-github.sh
```

## Troubleshooting

If your site shows a blank page:
1. Check the browser console for errors
2. Make sure .nojekyll file exists in your gh-pages branch
3. Ensure paths in your index.html are correct

If you see 404 errors:
1. Verify the repository name is correct in the vite.config.github.ts file
2. Make sure GitHub Pages is enabled in your repository settings

## Updating Your Portfolio

To update your portfolio:
1. Make changes to your code
2. Commit and push to the main branch
3. GitHub Actions will automatically redeploy your site

## Local Development

For local development:

```bash
# Install dependencies
npm install

# Start the development server
npm run dev
```