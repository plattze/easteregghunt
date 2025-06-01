# Easter Egg Hunt

This project is a lightweight, clue-based Easter Egg Hunt web app hosted on AWS. It is designed to run temporarily via iPad access and is managed purely via the AWS CLI.

---

## 🧠 Purpose
An interactive, password-based Easter Egg Hunt website for kids aged 8–12. Each stage or clue is unlocked via correct answers. The app is hosted using S3 static hosting and possibly backed by Lambda functions.

---

## 🔧 Project Setup

### Requirements
- GitHub account
- WSL (Ubuntu on Windows 11)
- AWS CLI configured with access keys

### File Layout
```
/root/code/easteregghunt
```

---

## 💾 Git Setup Instructions

### 1. Navigate to the project directory
```bash
cd /root/code/easteregghunt
```

### 2. Initialize Git
```bash
git init
```

### 3. Create `.gitignore`
```bash
cat <<EOF > .gitignore
node_modules/
.env
dist/
.DS_Store
*.log
EOF
```

### 4. Stage and commit files
```bash
git add .
git commit -m "Initial commit of easteregghunt project"
```

### 5. Create GitHub repository (manual)
Go to [https://github.com/new](https://github.com/new) and:
- Name: `easteregghunt`
- Visibility: **Private**
- DO NOT initialize with README

### 6. Link to GitHub and push
```bash
git remote add origin https://github.com/plattze/easteregghunt.git
git branch -M main
git push -u origin main
```

---

## ✅ Result
This project will now be version-controlled and backed up under its own GitHub repository.

For AWS deployment steps, Lambda scripts, or further automation, see additional `README` files inside relevant subdirectories.
