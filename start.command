#!/bin/bash
# Локальный просмотр сайта КвадратВкубе
cd "$(dirname "$0")" || exit 1
PORT=8080

(sleep 1; open "http://127.0.0.1:$PORT/") &

python3 - <<'PY'
import http.server, socketserver

PORT = 8080

class Handler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-store')
        super().end_headers()

class Server(socketserver.ThreadingTCPServer):
    allow_reuse_address = True

with Server(('127.0.0.1', PORT), Handler) as httpd:
    print(f'Сайт открыт: http://127.0.0.1:{PORT}/')
    print('Чтобы остановить сервер, нажмите Control+C и закройте окно Terminal.')
    httpd.serve_forever()
PY
