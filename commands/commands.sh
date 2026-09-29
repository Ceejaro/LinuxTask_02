#!/bin/bash
# Linux Command Line Practical Task 02 — reference commands
# Review before execution. This is NOT intended to be blindly executed.
# Manual steps: password prompts, su/login, nano editing, final checks.

# ============================================================
# STEP 1 — USER SETUP
# Administrative context
# ============================================================

sudo useradd -m student01
sudo passwd student01

# Add to sudo if required by the environment/task:
sudo usermod -aG sudo student01

# Switch manually:
su - student01

# Verify:
whoami

# ============================================================
# STEP 2 — DIRECTORY & FILE MANAGEMENT
# Account: student01
# ============================================================

cd ~
mkdir -p project/docs project/scripts project/bin

cd ~/project/docs

echo "This is the initial report by student01." > report.txt

ls -la

echo "Top Secret." > .secret.txt

# Verify:
ls -la
cat report.txt
cat .secret.txt

# ============================================================
# STEP 3 — EDIT AND MOVE FILES
# Account: student01
# ============================================================

# Manual nano edit: add the required second line to report.txt
nano report.txt

cp report.txt ../scripts/
mv .secret.txt ../bin/classified.txt

cd ../scripts

# Manual nano creation of install.sh with the required content
nano install.sh

# Verify:
cat install.sh
ls -la

# ============================================================
# STEP 4 — PERMISSIONS
# Account: student01
# ============================================================

# Executable by all users:
chmod a+x install.sh

# Remove read permission for others:
chmod o-r ../bin/classified.txt

cd ../docs

# Create admin_notes.txt:
touch admin_notes.txt

# Owner read/write only:
chmod 600 admin_notes.txt

# Verify permissions:
ls -la admin_notes.txt
ls -la ../bin/classified.txt
ls -la ../scripts/install.sh

# ============================================================
# STEP 5 — CLEAN-UP / BACKUP
# Account: student01
# ============================================================

rm admin_notes.txt

cd ..
mkdir backup

# Copy entire contents of docs and scripts:
cp -r docs/. backup/
cp -r scripts/. backup/

# Verify:
ls -la backup

# ============================================================
# FINAL CHECKS
# Account: student01
# ============================================================

cd ~

# If tree is unavailable, install it as instructed by the task:
# sudo apt install tree

tree project

ls -la project/docs
ls -la project/scripts
ls -la project/bin
ls -la project/backup

# ============================================================
# OPTIONAL BONUS
# ============================================================

history
history > ~/commands_used.txt
