# RouteHash Datum Gateway

RouteHash Datum Gateway is for a person who already runs Bitcoin Knots and wants their own ASICs to mine through DATUM, with the pool pointed at RouteHash.

It runs on an AMD or Intel Umbrel, on Umbrel Home, and on a Raspberry Pi. The image is one manifest for amd64 and arm64. The StartOS package is a separate download for an AMD or Intel server. A Raspberry Pi running StartOS does not have a gateway package in that release. A Raspberry Pi running Umbrel installs this app from this store.

This store is the RouteHash community store. It is not the official Umbrel App Store.

## Why this DATUM

DATUM is the program between your ASICs and the Knots node you run. The node builds the block. The ASIC asks the gateway for work. This gateway then joins RouteHash at `pool.routehash.com:28915`, so a block this node finds can be shared with that pool.

Other DATUM apps are aimed at a different pool, or they start with the pool blank. Ocean's DATUM listens for miners on port 23334. The Blake2b and SHA-256 companions use 23336 and 23338. This gateway uses miner port **23339**, so it can sit on the same machine as one of those. Pool Host, the RouteHash pubkey, collaborative reward sharing, and the pool-pass switches are filled in for RouteHash. Never put 28915 on an ASIC.

## Who it is for

Use this app when the ASICs are yours and the Knots node is yours, and you want that node to build the work those ASICs hash.

A hash-only miner that does not run a node leaves the firmware on `stratum.routehash.com:23335` and skips this app. A person who already runs one DATUM pastes Pool Host `pool.routehash.com`, port `28915`, and the pubkey from [pool/connect](https://app.routehash.com/pool/connect) into that gateway. One DATUM on the machine is the setup. Two gateways means two miner ports.

An operator who wants the pool left blank clears Pool Host after install. This app does not ship Bitcoin Knots. Install Bitcoin Knots and let it finish sync before this gateway can read templates.

## On the miner

In the miner's own web interface, set the pool to this Umbrel's address on port **23339**. Use that address, not a `.local` name. Most ASIC firmware has no mDNS resolver. The worker is your mining address and a worker name. Leave the password blank, or set `d=2048` when the miner requires a password.

Open this app and set the mining Bitcoin address under Config before hashing. The dashboard username is `admin`. The password is the default Umbrel shows for this app.

Confirm Pool Host `pool.routehash.com`, Pool Port `28915`, Pool Pubkey filled, collaborative reward sharing set to prefer, Pool Pass User on, and Pool Pass Workers off.

## StartOS

The AMD or Intel package is `routehash-gateway_x86_64.s9pk` on [github.com/RouteHash-com/routehash-start9-gateway](https://github.com/RouteHash-com/routehash-start9-gateway). The same purpose is written there. A Raspberry Pi running Umbrel uses this folder.
