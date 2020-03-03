while true; do
    ( echo -e 'HTTP/1.1 200 OK\r\n'; ./tarpit-overview.sh ) | nc -lp 8080 -q 0 >> tarpit-server.log;
done
