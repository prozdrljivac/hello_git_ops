# Hello Git Ops

## Setting Up Git Hooks for This Repository

This project uses custom Git hooks to ensure code quality and enforce consistent commit messages and branch naming conventions. Please follow the steps below to set up the hooks in your local environment.

### Step 1: Run the Hook Installation Script

Navigate to the root of the repository and run the install-hooks.sh script to set up the Git hooks:

```bash
./install-hooks.sh
```

### Step 2: Verify the Installation

After running the script, you can verify that the hooks are in place by listing the hooks in the .git/hooks directory:

```bash
ls .git/hooks
```

You should see symlinks to the custom hooks defined in the .githooks directory, such as:

```text
commit-msg -> ../../.githooks/commit-msg
pre-push -> ../../.githooks/pre-push
```

### Step 4: Commit and Push Code as Usual

Now, when you commit or push code, the hooks will automatically validate your commit messages and branch names based on the defined rules.

#### Hook Details

The repository enforces the following rules:

1. Commit Message Format: Commit messages must follow this format:

```text
HGO-<task-id>: Short description
Example: HGO-123: Fix login issue
```

2. Branch Name Format: Branch names must follow this format:

```text
feature|bug|enhancement/HGO-<task_id>-short-description
Example: feature/HGO-456-upload-image
Example: bug/HGO-456-fix-profile-bug
Example: enhancement/HGO-789-improve-dashboard-ui
```
