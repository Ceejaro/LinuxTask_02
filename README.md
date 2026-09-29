# Linux Command Line Practical Task 02

## Project Overview

A GitHub-ready workflow for the uploaded **Linux Command Line Practical Task**. The project is designed to guide completion of the activity in Kali Linux while keeping actual terminal results and evidence student-generated.

## Objective

Demonstrate understanding of basic Linux commands by completing the required tasks as a newly created user in Kali Linux.

## Source Requirements

This project follows the uploaded task's exact user, directory, file, command, permission, cleanup, backup, and final-check requirements. No completed results or screenshots are fabricated.

## Tools / Commands Used

- Kali Linux terminal
- user creation and password commands
- `sudo`
- `su` or login
- `whoami`
- `mkdir`
- `cd`
- `echo`
- `ls -la`
- `nano`
- `cp`
- `mv`
- `chmod`
- `rm`
- `tree`
- `history`
- output redirection with `>`

## Prerequisites

- Kali Linux terminal access
- Permission to create the `student01` user
- Administrative access where the task requires `sudo`
- Basic familiarity with opening a terminal

## Project Structure

```text
linux-command-line-task-02-student01/
├── README.md
├── .gitignore
├── docs/
│   ├── README.md
│   └── task-overview.md
├── workflow/
│   ├── README.md
│   └── workflow.md
├── commands/
│   ├── README.md
│   └── commands.sh
├── scripts/
│   └── README.md
├── evidence/
│   ├── README.md
│   ├── screenshots/
│   │   └── .gitkeep
│   └── terminal-output/
│       └── .gitkeep
└── submission/
    ├── README.md
    ├── commands_used.txt
    └── final-tree.txt
```

## Practical Workflow

1. Create `student01`, set a password, add the user to `sudo` if required, and switch to the new user.
2. Confirm the account with `whoami`.
3. Create `project/docs`, `project/scripts`, and `project/bin`.
4. Create `report.txt` with the required initial content.
5. Use `ls -la` and create `.secret.txt` with the required text.
6. Edit `report.txt` with `nano` and add the required second line.
7. Copy `report.txt` to `scripts`.
8. Move and rename `.secret.txt` to `bin/classified.txt`.
9. Create `scripts/install.sh` with the required shell content.
10. Apply the required permissions with `chmod`.
11. Delete `admin_notes.txt`.
12. Create `project/backup` and copy the entire contents of `docs` and `scripts` into it.
13. Run the final `tree project` check, installing `tree` with `sudo apt install tree` first only if it is not installed.
14. Use `ls -la` to verify permissions and file locations.
15. Optionally save command history to `commands_used.txt`.

## Important Permission Notes

The activity specifies:
- `install.sh` must be executable by all users.
- `classified.txt` must have read permission removed for others.
- `admin_notes.txt` must allow only the owner to read and write.
- `admin_notes.txt` is then deleted.

The exact `chmod` modes used to satisfy those requirements are explained in the workflow rather than hidden inside an automated script.

## Expected Final State

The expected final project should reflect the task's cleanup and backup steps. In particular:
- `admin_notes.txt` has been deleted from `docs`.
- `backup` exists inside `project`.
- The contents of `docs` and `scripts` have been copied into `backup`.
- `report.txt` has its original line plus the line appended using `nano`.
- `report.txt` exists in `docs` and a copied version exists in `scripts`.
- `classified.txt` is in `bin`.
- `install.sh` is in `scripts` and has the required executable permission.

Your actual permissions and command history must come from your own Kali session.

## Evidence

See `evidence/README.md`. The uploaded task specifically requires final checks with `tree project` and `ls -la`; screenshots are not explicitly required by the task, so this repository does not invent mandatory screenshot requirements.

## Submission

The uploaded task does not specify a formal submission list. The `submission/` directory therefore contains optional organization templates for preserving your actual final tree and optional history output, including the bonus `commands_used.txt`.

## Troubleshooting

### `tree: command not found`

The task instructs:

```bash
sudo apt install tree
```

Then run:

```bash
tree project
```

### `whoami` does not show `student01`

Switch again using `su` or the login method specified in the task, then run:

```bash
whoami
```

### Permission result is unclear

Inspect the relevant file with:

```bash
ls -la
```

The task's final check specifically uses `ls -la` to confirm permissions and file locations.

## Final Verification Checklist

- [ ] `student01` created
- [ ] Password set
- [ ] User added to `sudo` if required
- [ ] Switched to `student01`
- [ ] `whoami` confirms `student01`
- [ ] `project/docs`, `project/scripts`, and `project/bin` created
- [ ] `report.txt` created with required initial line
- [ ] `ls -la` used
- [ ] `.secret.txt` created with required text
- [ ] Required second line added to `report.txt` using `nano`
- [ ] `report.txt` copied to `scripts`
- [ ] `.secret.txt` moved/renamed to `bin/classified.txt`
- [ ] `install.sh` created with required content
- [ ] `install.sh` made executable by all users
- [ ] Read permission removed for others from `classified.txt`
- [ ] `admin_notes.txt` created with owner read/write only
- [ ] `admin_notes.txt` deleted
- [ ] `project/backup` created
- [ ] Entire contents of `docs` and `scripts` copied into `backup`
- [ ] `tree project` completed
- [ ] Final `ls -la` verification completed
- [ ] Bonus history saved if chosen
