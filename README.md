Python Test Action
==================

GitHub action that runs `nosetests`.

## Usage

Dependencies in `requirements.txt` will be installed. Run test with default setting:

```
workflow "Python Test" {
  on = "push"
  resolves = ["python-test"]
}

action "python-test" {
  uses = "CyberZH/@github-action-python-test@master"
}
```

Add arguments:

```
workflow "Python Test" {
  on = "push"
  resolves = ["python-test"]
}

action "python-test" {
  uses = "CyberZHG/github-action-python-test@master"
  args = "--with-coverage source_folder_1_name source_folder_2_name ..."
}
```
