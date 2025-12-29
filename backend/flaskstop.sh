#!/bin/bash

echo "Menghentikan Flask (Backend)..."
# Cari PID yang menggunakan port 5000 (default Flask) dan matikan
fuser -k 5000/tcp

echo "Menghentikan NPM (Frontend)..."
# Cari PID yang menggunakan port 5173 (default Vite) atau 3000
fuser -k 5173/tcp

echo "Semua proses telah dihentikan."
