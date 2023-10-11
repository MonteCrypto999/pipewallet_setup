# How to Set Up Your Pipe Wallet on Windows

## Prerequisites:
- Approximately 800GB of free space
- [NodeJS installed](https://nodejs.org/en/download) (Download and follow the setup instructions)
- Internet

## Step 1: Install Bitcoin Core Node
- Download the [Bitcoin Core node](https://bitcoin.org/en/download) from the official website.
- Follow the setup instructions.

## Step 2: Create Launch Script
- Create a file named `LaunchBitcoind.bat`, also available on this [repository](https://github.com/SonOfLiberty-99/pipewallet_setup/blob/master/LaunchBitcoind.bat).
- Copy and paste the code below into the file:

```batch
@echo off
setlocal
set "user=YOUR_USERNAME"
set "pass=YOUR_PASSWORD"
:: Launch bitcoind with RPC authentication and bind to localhost
start cmd.exe /k "bitcoind -txindex -server -rpcuser=%user% -rpcpassword=%pass% -rpcallowip=127.0.0.1"
endlocal
```

- Replace `YOUR_USERNAME` and `YOUR_PASSWORD` with your own credentials e.g. `PIPE` `12345PIPE`
- Save the file and execute it by double-clicking. The node will sync with TX (this process may take around 2 days for a full sync).
- Keep this window open to maintain a node always synced or re-launch it to sync again.

## Step 3: Download and Set Up Pipe Wallet
- [Download the pipe wallet](https://github.com/BennyTheDev/pipe-wallet/archive/refs/heads/master.zip) and extract it.
- You will get a folder named `pipe wallet`.
- Right-click on the `pipe wallet` folder and choose "Open in terminal".
- Type `npm install` to download all the required files for the pipe wallet.

## Step 4: Configure Pipe Wallet
- Navigate to the `config` folder at the root of the Pipe wallet.
- Open `default.json` with a text editor.
- Replace the existing config with the configuration below:

```json
{
  "bitcoin_cli_path": "\"C:\\Program Files\\Bitcoin\\daemon\\bitcoin-cli.exe\" -rpcuser=YOUR_USERNAME -rpcpassword=YOUR_PASSWORD",
  "start_block": 809607
}
```
- Replace `YOUR_USERNAME` and `YOUR_PASSWORD` with your own credentials.

This modified file is also available in the config folder of this [repository](https://github.com/SonOfLiberty-99/pipewallet_setup/blob/master/config/default.json).

Now it's time to test all these things!

## Step 5: Test Your Setup
- Right-click on the `pipe wallet` folder and choose "Open in terminal".
- We will test the setup by creating our first pipe wallet.
- Execute the command below:

```bash
node pipe.mjs walletcreate <walletname>
```

Replace `<walletname>` with a name of your choice e.g. `MyWallet1`.
If you see "Done indexing ...", congratulations! Your wallet is syncing.
Wait for the syncing process to complete and you'll have your pipe wallet set up.

Don't forget to say Hello on our [website](https://pipeexplore.web.app/)
Some new features are coming!





