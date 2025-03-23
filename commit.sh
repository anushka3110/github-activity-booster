#!/bin/bash
echo "$(date)" >> log.txt
git add .
git commit -m "Update: $(date)"
git push origin main
