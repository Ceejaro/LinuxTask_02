# Task 02 — Requirement Overview

## Objective

Demonstrate understanding of basic Linux commands by completing the activity as a newly created user in Kali Linux.

## Step 1 — Create and Switch to a New User

- Open the terminal.
- Create user `student01`.
- Set a password.
- Add the user to the `sudo` group if required.
- Switch to the new user using `su` or login.
- Confirm with `whoami`.

## Step 2 — Directory & File Management

Inside the new user's home directory:
- Create `project`.
- Inside `project`, create `docs`, `scripts`, and `bin`.
- In `docs`, create `report.txt` using `echo` with:
  `This is the initial report by student01.`
- Use `ls -la`.
- Create hidden `.secret.txt` in `docs` with:
  `Top Secret.`

## Step 3 — Edit and Move Files

- Open `report.txt` with `nano` and add:
  `Appended line using nano.`
- Copy `report.txt` to `scripts`.
- Move `.secret.txt` to `bin` and rename it `classified.txt`.
- Create `scripts/install.sh` containing the supplied two-line shell script.

## Step 4 — Permissions with chmod

- In `scripts`, make `install.sh` executable by all users.
- In `bin`, remove read permission for others from `classified.txt`.
- In `docs`, create `admin_notes.txt`.
- Set `admin_notes.txt` so only the owner can read and write.

## Step 5 — Clean-Up and Final Touches

- Delete `admin_notes.txt`.
- Create `project/backup`.
- Copy the entire content of `docs` and `scripts` into `backup`.

## Final Checks

- Navigate back to the home directory.
- Run `tree project`; if `tree` is unavailable, install it with `sudo apt install tree` first.
- Use `ls -la` to confirm permissions and file locations.

## Bonus

- Use `history` to list commands.
- Redirect history to `commands_used.txt` in the home directory using `>`.
