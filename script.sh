#!/bin/bash
raw_recco=$(./cloudfix-linter/cloudfix-linter recco)
echo "${raw_recco}"
res=$(gh api repos/trilogy-group/terraform-github-actions/issues/${{ github.event.pull_request.number }}/comments \
            -f body="${raw_recco}")
echo "${res}"