gh api repos/trilogy-group/terraform-github-actions/pulls/${{ github.event.pull_request.number }}/comments \
  -f body="This Line" \
  -f path="main.tf" \
  -F line="1" \
  -f side="RIGHT" \
  -f commit_id="${{ github.event.pull_request.head.sha }}"