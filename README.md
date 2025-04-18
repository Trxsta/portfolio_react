# Tristan Goodwin Portfolio

A professional React-based portfolio website designed to showcase personal projects, skills, and professional achievements.

## Features

- **Modern Tech Stack**: Built with React.js, TypeScript, Tailwind CSS, and Vite
- **Interactive UI**: Uses framer-motion for smooth animations and transitions
- **Responsive Design**: Optimized for all device sizes (mobile, tablet, desktop)
- **Multi-page Layout**: Separate pages for Home, About, Projects, and Contact
- **Project Showcase**: Highlights technical projects with embedded videos
- **SEO Friendly**: Proper metadata and semantic markup

## Pages

- **Home**: Introduction and overview
- **About**: Personal information, skills, experience, and education
- **Projects**: Showcase of technical projects with videos and links
- **Contact**: Contact form and social media links

## Getting Started

### Prerequisites

- Node.js (v14 or higher)
- npm or yarn

### Installation

```bash
# Clone the repository
git clone https://github.com/Trxsta/portfolio_react.git
cd portfolio_react

# Install dependencies
npm install

# Start development server
npm run dev
```

## Deployment to GitHub Pages

This project includes a deployment script that makes it easy to deploy to GitHub Pages:

```bash
# Make the deployment script executable
chmod +x deploy-to-github.sh

# Run the deployment script
./deploy-to-github.sh
```

The script will:
1. Build the project with the correct base path
2. Create/switch to the gh-pages branch
3. Copy the build files to the root
4. Add the necessary .nojekyll file
5. Commit and push the changes

After running the script, your site will be available at: https://trxsta.github.io/portfolio_react/

## Credits

- Developed by: Tristan Goodwin
- Digital Media - Interactive Web & Marketing Student at UCF
- Contact: tristangoodwin065@gmail.com