#!/bin/bash
while true; do
    git add .
    git commit -m "Auto-update $(date '+%Y-%m-%d %H:%M:%S')" && git push origin main
    sleep 60   # cada 1 minuto revisa si hay cambios
done
