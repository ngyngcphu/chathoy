# ChatHoy
![License](https://img.shields.io/github/license/ngyngcphu/chathoy) ![Library](https://img.shields.io/github/package-json/dependency-version/ngyngcphu/chathoy/socket.io) ![Pull Request](https://img.shields.io/github/issues-pr-closed/ngyngcphu/chathoy) ![Deploy](https://github.com/ngyngcphu/chathoy/actions/workflows/deploy.yml/badge.svg) ![Package](https://img.shields.io/github/package-json/v/ngyngcphu/chathoy)  
This is a basic project about DevOps. I improve it from a chat application in TickLab Challenge. The features have not changed, but highlights:
- `docker` and `docker compose`: deploy backend service.
- `nginx`: a web server - deploy frontend UI.
- `Container Registry`: a Docker Registry on GitHub.
- `GitHub Action`: auto build - push docker image to Container Registry and deploy frontend - backend to my VPS.
- `Dependabot`: automate update latest dependecies and security.
- [Cloudflare](https://www.cloudflare.com): config proxy HTTPS to my VPS.
- [release-please-action](https://github.com/google-github-actions/release-please-action): automate release latest version of package.
## Prerequisites
- `docker` v23.0.1
- `docker compose` v2.16.0
## How to start
Front-end: This is a static html file, you can open with extension Live Server on VS Code.  
Back-end:
```bash
docker pull ghcr.io/ngyngcphu/chathoy
docker compose up -d chathoy
```
## Project structure
```py
📦.github
 ┣ 📂workflows                  # Auto-release, auto-build image, auto-push image, auto-deploy
 ┣ 📜dependabot.yml             # Bot updates dependecies and security
┣ 📜chathoy-nginx.config        # Nginx config 
┣ 📜docker-compose.yml          # Create backend service process
┣ 📜Dockerfile                  # Buil backend service image
┣ 📜index.css                   # CSS file for UI
┣ 📜index.html                  # Static HTML file for UI
┣ 📜index.js                    # Logic of backend service
```
## Git working culture

- For every updates, DO NOT push directly to `master` branch. Create a new branch, commit, publish branch and create a pull request (PR) instead.
- A branch should have prefix `features/` for a feature update, prefix `hotfixes/` for a hotfix, `improvs/` for an improvement ...
- A PR should be small enough to review. To split a large PR, use [stacked PRs](https://blog.logrocket.com/using-stacked-pull-requests-in-github/).