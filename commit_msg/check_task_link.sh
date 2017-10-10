#!/bin/sh
# This hook checks link to task.
test -n "$(grep -Eo 'Task: (http|https)://' ${1})" || {
        echo >&2 "ERROR: Commit message is missing task link. Please append the task link relative to this commit into the commit message. in folowing format: Task: <full url to task (with http)>"
        exit 1
}
