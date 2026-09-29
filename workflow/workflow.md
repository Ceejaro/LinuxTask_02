# Linux Command Line Practical Task — Detailed Workflow

## Phase 1 — Create and Switch to `student01`

### Account context
Administrative account / `sudo` for account creation and password setup.

### 1. Create the user

The task requires a new user named `student01`.

Use the appropriate administrative user-creation command available in your Kali environment.

Example:

```bash
sudo useradd -m student01
```

### 2. Set a password

```bash
sudo passwd student01
```

Follow the terminal prompts.

### 3. Add the user to `sudo` if required

```bash
sudo usermod -aG sudo student01
```

### 4. Switch to the new user

```bash
su - student01
```

### 5. Verify

```bash
whoami
```

Expected result:

```text
student01
```

### Evidence
The task does not mandate a screenshot for this step. If you document your work, capture the `whoami` result.

### Note
The uploaded task does not specify a particular `useradd` option set. Do not add unsupported account configuration requirements.

---

## Phase 2 — Create the Project Structure

### Account context
`student01`

Move to the home directory:

```bash
cd ~
```

Create the required directory structure:

```bash
mkdir -p project/docs project/scripts project/bin
```

### Verify

```bash
ls -la project
```

Expected directories:
- `docs`
- `scripts`
- `bin`

### Evidence
The task's final checks are more important than an intermediate screenshot. Preserve actual output if you choose to document this stage.

---

## Phase 3 — Create `report.txt` and `.secret.txt`

### Account context
`student01`

Enter `docs`:

```bash
cd ~/project/docs
```

Create `report.txt` using `echo` with the required content:

```bash
echo "This is the initial report by student01." > report.txt
```

### Verify

```bash
cat report.txt
```

Expected content:

```text
This is the initial report by student01.
```

Use `ls -la` as required:

```bash
ls -la
```

Create the hidden file:

```bash
echo "Top Secret." > .secret.txt
```

Verify:

```bash
ls -la
cat .secret.txt
```

Expected hidden-file content:

```text
Top Secret.
```

---

## Phase 4 — Edit, Copy, Move, and Create `install.sh`

### Account context
`student01`

Open `report.txt` in nano:

```bash
nano report.txt
```

Add this second line:

```text
Appended line using nano.
```

Save and exit nano.

Verify:

```bash
cat report.txt
```

Copy `report.txt` to `scripts`:

```bash
cp report.txt ../scripts/
```

Move `.secret.txt` to `bin` and rename it:

```bash
mv .secret.txt ../bin/classified.txt
```

Create `install.sh` in `scripts`:

```bash
cd ../scripts
nano install.sh
```

Enter exactly:

```bash
#!/bin/bash
echo "Installing project dependencies..."
```

Save and exit.

### Verify

```bash
cat install.sh
ls -la
```

Also check the copied report:

```bash
ls -la ~/project/scripts/report.txt
```

And the renamed file:

```bash
ls -la ~/project/bin/classified.txt
```

---

## Phase 5 — Apply the Required Permissions

### Account context
`student01`

### `install.sh`: executable by all users

The requirement means owner, group, and others must have execute permission. A direct mode that adds execute permission for all while retaining existing read/write permissions is:

```bash
chmod a+x install.sh
```

Verify:

```bash
ls -la install.sh
```

The permission string should contain `x` in the owner, group, and others execute positions.

### `classified.txt`: remove read permission for others

```bash
chmod o-r ../bin/classified.txt
```

Verify:

```bash
ls -la ../bin/classified.txt
```

### `admin_notes.txt`: owner read/write only

Go to docs:

```bash
cd ../docs
```

Create the file:

```bash
touch admin_notes.txt
```

Set owner read/write and no permissions for group/others:

```bash
chmod 600 admin_notes.txt
```

Verify:

```bash
ls -la admin_notes.txt
```

Expected permission mode:

```text
-rw-------
```

### Evidence
The uploaded task does not specify screenshot requirements. For your own documentation, the `ls -la` output is the relevant proof of the permission settings.

---

## Phase 6 — Clean Up and Create Backup

### Account context
`student01`

Delete `admin_notes.txt`:

```bash
rm admin_notes.txt
```

Create the backup directory:

```bash
cd ..
mkdir backup
```

Copy the entire contents of `docs` and `scripts` into `backup`:

```bash
cp -r docs/. backup/
cp -r scripts/. backup/
```

The `/.` form copies the contents, including hidden entries if any remain, rather than nesting `docs` and `scripts` themselves inside `backup`.

### Verify

```bash
ls -la backup
```

You should see the copied contents from both source directories.

---

## Phase 7 — Final Checks

### Account context
`student01`

Navigate to the home directory:

```bash
cd ~
```

Run:

```bash
tree project
```

If `tree` is not installed, the task instructs you to run:

```bash
sudo apt install tree
```

Then:

```bash
tree project
```

Use `ls -la` to confirm permissions and file locations. For focused checks:

```bash
ls -la project/docs
ls -la project/scripts
ls -la project/bin
ls -la project/backup
```

### Expected final structure

The exact listing will depend on normal filesystem metadata, but the task requires the following key items to exist:

```text
project/
├── docs/
│   ├── report.txt
│   └── (admin_notes.txt deleted)
├── scripts/
│   ├── report.txt
│   └── install.sh
├── bin/
│   └── classified.txt
└── backup/
    └── copied contents of docs and scripts
```

Do not substitute this outline for your actual `tree project` output.

---

## Phase 8 — Optional Bonus: Save Command History

The task marks this as optional.

Run:

```bash
history
```

To redirect the history output to `commands_used.txt` in the home directory:

```bash
history > ~/commands_used.txt
```

Verify:

```bash
ls -l ~/commands_used.txt
```

This is optional and should not be presented as a mandatory submission requirement.

---

# Final Verification Checklist

- [ ] `student01` created
- [ ] Password set
- [ ] Added to `sudo` if required
- [ ] Switched to `student01`
- [ ] `whoami` confirms `student01`
- [ ] `project/docs` created
- [ ] `project/scripts` created
- [ ] `project/bin` created
- [ ] `report.txt` created with the required initial line
- [ ] `ls -la` used
- [ ] `.secret.txt` created with `Top Secret.`
- [ ] Second line added to `report.txt` using `nano`
- [ ] `report.txt` copied to `scripts`
- [ ] `.secret.txt` moved/renamed to `bin/classified.txt`
- [ ] `install.sh` created with the required content
- [ ] `install.sh` made executable by all users
- [ ] Read permission removed for others from `classified.txt`
- [ ] `admin_notes.txt` created with owner read/write only
- [ ] `admin_notes.txt` deleted
- [ ] `project/backup` created
- [ ] Contents of `docs` and `scripts` copied into `backup`
- [ ] Final `tree project` run
- [ ] Final `ls -la` checks completed
- [ ] Optional `commands_used.txt` created if desired
