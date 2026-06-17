#!/bin/bash

# LexForge™ Full Legal Document Suite Template Generator
# Step-by-Step Execution & GitHub Deployment Guide

# ============================================================================
# STEP 1: VERIFY PREREQUISITES
# ============================================================================

echo "=========================================================================="
echo "STEP 1: Verify Prerequisites"
echo "=========================================================================="

# Check Python version
python3 --version
if [ $? -ne 0 ]; then
    echo "ERROR: Python 3 not found. Install Python 3.8+"
    exit 1
fi

# Check pip
pip3 --version
if [ $? -ne 0 ]; then
    echo "ERROR: pip3 not found"
    exit 1
fi

# Check git
git --version
if [ $? -ne 0 ]; then
    echo "ERROR: Git not found"
    exit 1
fi

echo "✓ All prerequisites found"

# ============================================================================
# STEP 2: INSTALL DEPENDENCIES
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 2: Install Python Dependencies"
echo "=========================================================================="

pip3 install --break-system-packages python-docx

echo "✓ Dependencies installed"

# ============================================================================
# STEP 3: NAVIGATE TO WORKING DIRECTORY
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 3: Prepare Working Directory"
echo "=========================================================================="

mkdir -p ~/ACA_REPOS
cd ~/ACA_REPOS

# Verify you're in the right directory
if [ ! -d "archerchainanalytics-lexforge-full-legal-document-suite-templates-database" ]; then
    mkdir -p archerchainanalytics-lexforge-full-legal-document-suite-templates-database
fi

cd archerchainanalytics-lexforge-full-legal-document-suite-templates-database

echo "Working directory: $(pwd)"
echo "✓ Directory ready"

# ============================================================================
# STEP 4: COPY GENERATOR SCRIPT
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 4: Copy Generator Script to Working Directory"
echo "=========================================================================="

# Copy the Python generator script from /home/claude/ to current directory
cp /home/claude/lexforge_template_generator.py ./
cp /home/claude/lexforge-master-schema.json ./SCHEMA.json
cp /home/claude/MASTER_INDEX.md ./MASTER_INDEX.md

echo "✓ Files copied:"
echo "  - lexforge_template_generator.py"
echo "  - SCHEMA.json"
echo "  - MASTER_INDEX.md"

# ============================================================================
# STEP 5: RUN TEMPLATE GENERATOR
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 5: Run Template Generator"
echo "=========================================================================="
echo ""
echo "This will generate 1,026+ documents across 19 languages and 3 jurisdictions."
echo "Expected time: 3-5 minutes on S21 Termux"
echo ""

python3 lexforge_template_generator.py

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ Template generation complete"
else
    echo "ERROR: Template generation failed"
    exit 1
fi

# ============================================================================
# STEP 6: VERIFY GENERATED FILES
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 6: Verify Generated Files"
echo "=========================================================================="

echo ""
echo "Document structure:"
ls -lh docx/CA/en/personal/ | head -5
echo "  ... (full directory listing available with 'find docx -type f | wc -l')"

echo ""
echo "Total DOCX files:"
find docx -type f | wc -l

echo "Total Markdown files:"
find markdown -type f | wc -l

echo "Total JSON files:"
find json -type f | wc -l

# ============================================================================
# STEP 7: INITIALIZE GIT REPOSITORY
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 7: Initialize Git Repository"
echo "=========================================================================="

# Initialize Git
git init
git config user.name "ArcherChainAnalytics-102237785"
git config user.email "n.archer101@gmail.com"

echo "✓ Git initialized"

# ============================================================================
# STEP 8: CREATE .GITIGNORE
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 8: Create .gitignore"
echo "=========================================================================="

cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
*.egg-info/
dist/
build/

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
Thumbs.db

# Temporary
*.tmp
*.temp
.temp/

# Keep all documents in repo
!docx/
!markdown/
!json/
EOF

echo "✓ .gitignore created"

# ============================================================================
# STEP 9: ADD ALL FILES TO GIT
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 9: Stage All Files for Git"
echo "=========================================================================="

git add .

echo "✓ All files staged"
echo ""
echo "Files staged for commit:"
git status --short | head -20
echo "..."
echo ""
echo "Total files to commit:"
git status --short | wc -l

# ============================================================================
# STEP 10: COMMIT INITIAL BUILD
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 10: Create Initial Commit"
echo "=========================================================================="

git commit -m "Initial build: LexForge™ Full Legal Document Suite

- 54 master templates across Canada, USA, International
- 19 languages: EN, FR-CA, DE, ES, IT, PT-BR, JA, ZH-CN, RU, KO, AR, HI, NL, SV, PL, TR, TH, VI, ID
- 2 versions: Personal (Archer Chain Analytics) + Commercial (customizable)
- 1,026+ total documents (DOCX, Markdown, JSON)
- Master schema and comprehensive index included
- Ready for LexForge™ template database integration"

echo "✓ Initial commit created"

# ============================================================================
# STEP 11: VERIFY LOCAL GIT SETUP
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 11: Verify Local Git Configuration"
echo "=========================================================================="

echo ""
echo "Current git config:"
git config --local user.name
git config --local user.email

echo ""
echo "Commit log:"
git log --oneline | head -1

# ============================================================================
# STEP 12: CREATE GITHUB REPOSITORY (MANUAL STEP)
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 12: CREATE GITHUB REPOSITORY (MANUAL - DO IN WEB BROWSER)"
echo "=========================================================================="
echo ""
echo "⚠️  MANUAL STEP REQUIRED"
echo ""
echo "Go to: https://github.com/new"
echo ""
echo "Create a NEW repository with these settings:"
echo "  Repository name: archerchainanalytics-lexforge-full-legal-document-suite-templates-database"
echo "  Owner: ArcherChainAnalytics-102237785"
echo "  Visibility: Public (for LexForge™ distribution)"
echo "  Initialize with: NONE (we have local commits already)"
echo ""
echo "After creating the repository, GitHub will show you commands like:"
echo "  git remote add origin git@github.com:ArcherChainAnalytics-102237785/archerchainanalytics-lexforge-full-legal-document-suite-templates-database.git"
echo "  git branch -M main"
echo "  git push -u origin main"
echo ""
echo "Come back here after creating the repo and run Step 13."
echo ""

read -p "Press ENTER after you've created the GitHub repository..."

# ============================================================================
# STEP 13: ADD REMOTE AND PUSH
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 13: Connect to GitHub and Push"
echo "=========================================================================="

# Add GitHub remote
git remote add origin git@github.com:ArcherChainAnalytics-102237785/archerchainanalytics-lexforge-full-legal-document-suite-templates-database.git

# Verify connection
echo "Testing GitHub SSH connection..."
ssh -T git@github.com

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
echo ""
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ Successfully pushed to GitHub"
else
    echo ""
    echo "⚠️  Push failed. Verify GitHub SSH is configured."
    echo "Run: ssh -T git@github.com"
    exit 1
fi

# ============================================================================
# STEP 14: VERIFY GITHUB REPOSITORY
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 14: Verify GitHub Repository"
echo "=========================================================================="

echo ""
echo "Repository URL:"
git remote -v

echo ""
echo "✓ Your repository is now live at:"
echo "  https://github.com/ArcherChainAnalytics-102237785/archerchainanalytics-lexforge-full-legal-document-suite-templates-database"

echo ""
echo "View latest commits:"
git log --oneline -5

# ============================================================================
# STEP 15: CREATE DEPLOYMENT MANIFEST
# ============================================================================

echo ""
echo "=========================================================================="
echo "STEP 15: Create Deployment Manifest"
echo "=========================================================================="

cat > DEPLOYMENT_MANIFEST.md << 'EOF'
# LexForge™ Legal Suite - Deployment Manifest

**Generated:** 2026-06-17  
**Build Version:** 1.0  
**Total Documents:** 1,026+  
**Repository:** archerchainanalytics-lexforge-full-legal-document-suite-templates-database

## File Structure

```
├── README.md                          # Overview
├── MASTER_INDEX.md                    # Complete document catalog (54 docs)
├── SCHEMA.json                        # Master template schema
├── DEPLOYMENT_MANIFEST.md             # This file
├── docx/                              # Editable Word documents
│   ├── CA/                            # Canada (24 docs)
│   │   ├── en/personal/               # English, personal version
│   │   ├── en/commercial/             # English, commercial version
│   │   ├── fr-ca/personal/            # French Canadian
│   │   └── ... (17 more languages)
│   ├── US/                            # USA (18 docs)
│   └── INTL/                          # International (12 docs)
├── markdown/                          # Reference markdown versions
│   ├── CA/
│   ├── US/
│   └── INTL/
└── json/                              # LexForge™ database schema
    ├── canada_en_personal.json
    ├── canada_en_commercial.json
    └── ... (57 total JSON files)
```

## Document Count by Jurisdiction

| Jurisdiction | Documents | Languages | Versions | Total |
|--------------|-----------|-----------|----------|-------|
| Canada | 24 | 19 | 2 | 912 |
| USA | 18 | 19 | 2 | 684 |
| International | 12 | 19 | 2 | 456 |
| **TOTAL** | **54** | **19** | **2** | **2,052** |

*Note: This includes all format variations (DOCX + Markdown)*

## Key Features

✓ **Jurisdictionally-specific documents** for Canada, USA, and International
✓ **19 languages** including respectful Arabic (no UAE dialect variance)
✓ **2 versions:** Personal (Archer Chain Analytics) + Commercial (customizable templates)
✓ **Compliance-tagged** with regulatory frameworks (PIPEDA, GDPR, CCPA, ACA, etc.)
✓ **Variable injection system** using mustache syntax for easy customization
✓ **Cross-referenced documents** with dependency mapping
✓ **LexForge™ ready** JSON schema for template database integration

## Usage

### For Personal Use (Archer Chain Analytics)
- Use documents in `docx/[JURISDICTION]/[LANGUAGE]/personal/`
- All company information pre-filled
- Ready to customize for specific products

### For Commercial Distribution (LexForge™)
- Use documents in `docx/[JURISDICTION]/[LANGUAGE]/commercial/`
- All fields use `[VARIABLE_NAME]` placeholders
- Customize via variable injection system

### For LexForge™ Integration
- Use JSON schema files in `json/` directory
- Load into LexForge™ template database system
- Supports automatic variable mapping and document generation

## Deployment Locations

**Primary Repository:**
- GitHub: `ArcherChainAnalytics-102237785/archerchainanalytics-lexforge-full-legal-document-suite-templates-database`
- URL: https://github.com/ArcherChainAnalytics-102237785/archerchainanalytics-lexforge-full-legal-document-suite-templates-database

**Integration Points:**
- LexForge™ template database (JSON files)
- Mahihkan.com legal documentation (if needed)
- Product-specific sales pages

## Next Steps

1. **Import into LexForge™** — Load JSON schema files into LexForge™ template system
2. **Map to Products** — Create mappings between products and recommended document bundles
3. **Customize for Products** — Use commercial versions to generate product-specific documents
4. **Distribute** — Offer templates to customers through LexForge™ marketplace

## Support & Maintenance

For questions or updates:
- Contact: neil.archer@archerchainanalytics.com
- Organization: ArcherChainAnalytics-102237785
- Updates: See Git commit history for version changes

---

**Status:** ✓ Deployed and ready for LexForge™ integration  
**Last Updated:** 2026-06-17
EOF

git add DEPLOYMENT_MANIFEST.md
git commit -m "Add deployment manifest"
git push origin main

echo "✓ Deployment manifest created and pushed"

# ============================================================================
# COMPLETION
# ============================================================================

echo ""
echo "=========================================================================="
echo "✓ BUILD & DEPLOYMENT COMPLETE"
echo "=========================================================================="
echo ""
echo "Summary:"
echo "  ✓ Generated 1,026+ documents across 19 languages"
echo "  ✓ Created DOCX templates (editable Word documents)"
echo "  ✓ Generated Markdown reference versions"
echo "  ✓ Created JSON schema for LexForge™"
echo "  ✓ Initialized Git repository"
echo "  ✓ Pushed to GitHub"
echo ""
echo "Repository:"
echo "  https://github.com/ArcherChainAnalytics-102237785/archerchainanalytics-lexforge-full-legal-document-suite-templates-database"
echo ""
echo "Next Actions:"
echo "  1. Verify GitHub repository (refresh page to see files)"
echo "  2. Integrate JSON files into LexForge™ template database"
echo "  3. Map documents to products in sales matrix"
echo "  4. Begin generating product-specific legal suites"
echo ""
echo "=========================================================================="
