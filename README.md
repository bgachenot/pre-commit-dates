pre-commit-dates
=================

----

git commit date hooks for http://pre-commit.com/

Ensure the current commit date is newer than the previous commit date.

### Using these hooks

Add this to your `.pre-commit-config.yaml`

    - repo: https://github.com/bgachenot/pre-commit-dates.git
      rev: master
      hooks:
        - id: current-master
        - id: current-previous

### Available hooks

- `current-master` - Ensures the current commit date is newer than the master branch
- `current-previous` - Ensures the current commit date is newer than the previous commit