@echo off
setlocal
set "user=YOUR_USERNAME"
set "pass=YOUR_PASSWORD"
:: Launch bitcoind with RPC authentication and bind to localhost
start cmd.exe /k "bitcoind -txindex -server -rpcuser=%user% -rpcpassword=%pass% -rpcallowip=127.0.0.1"
endlocal
