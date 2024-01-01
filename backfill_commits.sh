#!/bin/bash

# Set start date
start_date="2024-01-01"

# Get today's date
end_date=$(date +%Y-%m-%d)

# Navigate to the Git repository
cd /c/Users/singh/OneDrive/Documents/github-activity-booster


# Loop through each date
current_date="$start_date"
while [[ "$current_date" < "$end_date" ]]; do
    # Generate a random number of commits (1 to 5)
    num_commits=$((RANDOM % 5 + 1))

    for ((i = 1; i <= num_commits; i++)); do
        echo "Commit on $current_date ($i)" > "$current_date-$i.txt"
        git add .
        git commit -m "Commit on $current_date ($i)" --date="$current_date"
    done

    # Move to the next day
    current_date=$(date -I -d "$current_date + 1 day")
done

# Push changes to GitHub
git push origin main
