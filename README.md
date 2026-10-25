# RouteHash app store

Community apps for Umbrel. This store is separate from the official Umbrel App Store. The apps install on an AMD or Intel Umbrel, on Umbrel Home, and on a Raspberry Pi. Each listing is the one you install on umbrelOS 1.x and on umbrelOS 2.0.

## Add the store

1. Open the **App Store** from the dock.
2. Click the three dots at the top right and choose **Community App Stores**. On umbrelOS 2.0, after a store is added, that menu includes **Manage**.
3. Paste this address and choose **Add**:

```
https://github.com/RouteHash-com/umbrel-store
```

4. Choose **Open** next to **RouteHash**.
5. Install the app. These apps are listed under Bitcoin inside this store. The search box on the main App Store page does not list community apps.

Umbrel keeps the copy it already downloaded. If an app from the list below is missing, or an install fails after you update to umbrelOS 2.0, remove this community store and add the same address again. Removing the store does not uninstall an app you already installed.

## Autarki - Wallet / Nostr Shop

Autarki is the wallet and the Nostr shop. A person at a counter, or a shop that takes orders over Nostr, uses it to make the sale and hold the wallet on this Umbrel. The words, the shop book, and the sale stay on that machine.

It runs on an AMD or Intel Umbrel, on Umbrel Home, and on a Raspberry Pi. This listing is version 0.1.2, and it installs on umbrelOS 1.x and on umbrelOS 2.0. Umbrel builds the program that matches the machine. The StartOS packages for an AMD or Intel server and for a Raspberry Pi are on the package page.

This install does not require Bitcoin Knots or Bitcoin Core. Until you add your own node, ordinary XBT and SHA-256d use Autarki's public servers, and Nostr uses Autarki's public node. Add a node later on the page, under Settings, then Coin Nodes. A silent-payment code needs your own node. XBTC uses Autarki's public node until you connect your own. The StartOS package and the Umbrel package do not include that node.

At the counter, Pay Counter and the clerk ticket stay on the page. A shop set to Online hides both. Publish announces that choice. Online orders arrive over Nostr. Paying is still a coin, cash, a card, or Lightning. The order itself does not move the money. When the clerk marks a counter sale paid, the customer's page shows that order under Ledger, then Receipts.

The install steps, the machine each program is for, and the checksums are in [routehash-autarki](routehash-autarki).

## RouteHash Datum Gateway

RouteHash Datum Gateway is for a person who already runs Bitcoin Knots and wants their own ASICs to mine through DATUM, with the pool pointed at RouteHash.

DATUM lets the Knots node you run build the block. The ASIC asks this gateway for work. The gateway joins RouteHash at `pool.routehash.com:28915`, so a block this node finds can be shared with the pool. Other DATUM apps point somewhere else, or they leave the pool blank. Ocean's DATUM and the Blake2b and SHA-256 companions each use their own miner port. This gateway uses miner port **23339**, so it can sit on the same Umbrel as one of those. Pool Host starts as `pool.routehash.com:28915`. Never put 28915 on an ASIC.

Use this app when the ASICs are yours and the Knots node is yours. A hash-only miner that does not run a node leaves the firmware on `stratum.routehash.com:23335` and skips this app. A person who already runs one DATUM pastes the RouteHash pool into that gateway. One DATUM on the machine is the setup. Two gateways means two miner ports.

This listing is version 0.1.1. It installs on umbrelOS 1.x and on umbrelOS 2.0. It is the same app as 0.1.0, so an update keeps the saved gateway config. Umbrel pulls a pinned image. It does not build the gateway on the machine.

This install does require the official Umbrel app `bitcoin-knots`, because the gateway reads block templates from that node. That official listing is version 1.2.13, Knots v29.4.knots20260508. It follows Bitcoin and does not include Blake2b, so a Blake2b ASIC does not get Blake2b work from it. Leave that app in place when Lightning or Electrs uses it. This gateway does not attach to Knots (BLAKE2b) Companion. If Datum (BLAKE2b) Companion is already installed, use that gateway and skip this app. The Umbrel image is built for an AMD or Intel machine and for a Raspberry Pi, including Umbrel Home. The StartOS package on [the gateway page](https://github.com/RouteHash-com/routehash-start9-gateway) is the AMD or Intel package. A Raspberry Pi running StartOS does not have a gateway package in that release. A Raspberry Pi running Umbrel installs this app from this store. The listing stays beta until a live Umbrel install is confirmed.

The setup notes are in [routehash-gateway](routehash-gateway).

## Blake2b Pool Balance

Blake2b Pool Balance is for a person who already mines Blake2b through their own DATUM gateway and does not want one pool to hold more of the XBT network than they are willing to help it hold.

About once a minute it reads the pools that have published a size limit. When the pool this gateway is on would pass the share this machine will help one pool hold, it moves Pool Host to a pool that still has room. The share on this machine starts at 30 percent of global XBT hashrate. House Pool is the last stop, already filled in as `pool.routehash.com:28915`, so the rig keeps hashing when every other pool is full. A pool operator uses the other card on the same page to publish that pool's own limit. The miners on a pool do not opt in. Only this gateway moves, and only after you turn that on.

It sits beside the DATUM gateway you already run. It does not install DATUM, and it does not replace RouteHash Datum Gateway. It has no miner port. The ASICs stay on the gateway. The settings page is port **7156**.

Umbrel builds this app on the machine, from this app folder, so it runs on an AMD or Intel Umbrel, on Umbrel Home, and on a Raspberry Pi. This listing is version 0.1.2. It is the same app as 0.1.1, and it installs on umbrelOS 1.x and on umbrelOS 2.0. The StartOS package is the AMD or Intel file. A Raspberry Pi running StartOS does not have this package in that release. A Raspberry Pi running Umbrel installs it from this store.

The notes are in [routehash-blake2b-pool-balance/README.md](routehash-blake2b-pool-balance/README.md).

## Check a download

The Autarki folder ships a compiled program and a `SHA256SUMS` file. From `routehash-autarki`:

```
sha256sum -c SHA256SUMS
```

A matching file prints `OK`.

## What this store publishes

This store publishes the Umbrel install files for the three apps above. Each app has its own folder. Umbrel reads that folder as the listing.

**Autarki - Wallet / Nostr Shop** is [`routehash-autarki`](routehash-autarki). That folder has the compiled program, the image recipe, and the listing. The program source is not in this store. The package page is [https://github.com/RouteHash-com/autarki](https://github.com/RouteHash-com/autarki). That page has the StartOS packages, the Umbrel image archives, the checksums, and the pictures.

**RouteHash Datum Gateway** is [`routehash-gateway`](routehash-gateway). That folder has the listing and a DATUM setup already pointed at RouteHash. Umbrel installs the gateway image named in that folder. The StartOS package and the overlay notes are on [https://github.com/RouteHash-com/routehash-start9-gateway](https://github.com/RouteHash-com/routehash-start9-gateway).

**Blake2b Pool Balance** is [`routehash-blake2b-pool-balance`](routehash-blake2b-pool-balance). That folder has the listing and the program. Umbrel builds it on the machine from the recipe in the folder. The StartOS package is on [https://github.com/RouteHash-com/blake2b-pool-balance](https://github.com/RouteHash-com/blake2b-pool-balance).
