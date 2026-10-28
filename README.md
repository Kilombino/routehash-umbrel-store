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

It runs on an AMD or Intel Umbrel, on Umbrel Home, on Umbrel Pro, and on a Raspberry Pi. This listing is version 0.1.10, and it installs on umbrelOS 1.x and on umbrelOS 2.0. A wallet from 0.1.9 stays. If the store still shows 0.1.9, remove this community store and add the same address again. A PC, Umbrel Home, and Umbrel Pro use the amd64 program. A Raspberry Pi uses the arm64 program. The StartOS packages for an AMD or Intel server and for a Raspberry Pi are on the package page. The package version inside each file is 0.1.0:8, and sideloading it replaces 0.1.0:7. The wallet stays. Edit on a catalog product opens the form on that product and brings it into view.

This install does not require Bitcoin Knots or Bitcoin Core. On Umbrel you can run Knots for XBT, Knots for XBTC, or Bitcoin Core for SHA-256. XBT Knots and Bitcoin Core do not run on the same computer. XBTC Knots can run on the same computer as XBT Knots. This package does not treat Bitcoin Core as the XBT node. Blake2b Lightning is Lightning Fork, which PaulsCode made for XBT Knots. SHA-256 Lightning is LND, for Bitcoin Core. Until you add your own node, ordinary XBT and SHA-256d use Autarki's public servers, and Nostr uses Autarki's public node. Add a node later on the page, under Settings, then Coin Nodes. A silent-payment code for an address of yours needs your own node. A giveaway, a personal, or a job you are hiring for can be posted with no coin node. A store catalog can be saved and announced too. Goods, a service, a rental, or a job offered for a price needs the XBT node or the Bitcoin node. One is enough. Buyers pay that shop on-chain after a coin node is connected and you publish the shop again. XBTC uses Autarki's public node until you connect your own. The StartOS package and the Umbrel package do not include that node.

At the counter, Pay Counter and the clerk ticket stay on the page. A shop set to Online hides both. Publish announces that choice. An online shop asks Ship or Pick up before the order is sent. There is no default. Pick up pays the shop directly, the same as a counter sale. A shipment pays with Lightning. The shop marks it shipped. The customer marks it received. The shop's node holds the coins until the customer marks the order received. If the customer does not mark it received, the hold ends and the coins return to the customer. The shop's node has to stay on for that window. Each open order shows Ordered by and a short public name. On a customer wallet, Balance keeps See open orders and opens Shop. Paying a shop order uses the stall's silent-payment code from that order. A code you type on Send uses your own node. Online orders arrive over Nostr. Paying is still a coin, cash, a card, or Lightning. The order itself does not move the money. When the clerk marks a counter sale paid, the customer's page shows that order under Ledger, then Receipts.

Mining stays hidden until you save a RouteHash account under Settings. The account is the one on https://routehash.com. Hire a listed Blake2b rig with XBT, or a listed SHA-256 rig with BTC. Mine writes a Lightning invoice for accepted shares and waits until you click Pay. Paying it starts that rig only. The button says Pay to start on the first invoice, and Pay to keep when that rig is already hashing. Add Hash puts another rig on the same card. Hours from balance uses the confirmed balance on that account for the rig's minimum time. The first click quotes the hire. The second click spends it. Nothing is spent until you click Mine or confirm those hours. The card shows the work still paid for, and the countdown starts when the rig is hashing. Balance lists Open Mining Invoices once that account is saved. Blake2b Lightning and SHA-256 Lightning are your own nodes. The seed stays in this wallet.

The install steps, the machine each program is for, and the checksums are in [routehash-autarki](routehash-autarki).

## RouteHash Datum Gateway

RouteHash Datum Gateway is for a person who already runs Bitcoin Knots and wants their own ASICs to mine through DATUM, with the pool pointed at RouteHash.

DATUM lets the Knots node you run build the block. The ASIC asks this gateway for work. The gateway joins RouteHash at `pool.routehash.com:28915`, so a block this node finds can be shared with the pool. Other DATUM apps point somewhere else, or they leave the pool blank. Ocean's DATUM and the Blake2b and SHA-256 companions each use their own miner port. This gateway uses miner port **23339**, so it can sit on the same Umbrel as one of those. Pool Host starts as `pool.routehash.com:28915`. Never put 28915 on an ASIC.

Use this app when the ASICs are yours and the Knots node is yours. A hash-only miner that does not run a node leaves the firmware on `stratum.routehash.com:23335` and skips this app. A person who already runs one DATUM pastes the RouteHash pool into that gateway. One DATUM on the machine is the setup. Two gateways means two miner ports.

This listing is version 0.1.2. It installs on umbrelOS 1.x and on umbrelOS 2.0. It is the same app as 0.1.1, so an update keeps the saved gateway config. Umbrel pulls a pinned image. That image contains an amd64 build and an arm64 build. It does not build the gateway on the machine.

This install does require the official Umbrel app `bitcoin-knots`, because the gateway reads block templates from that node. That official listing is version 1.2.13, Knots v29.4.knots20260508. It follows Bitcoin and does not include Blake2b, so a Blake2b ASIC does not get Blake2b work from it. Leave that app in place when Lightning or Electrs uses it. This gateway does not attach to Knots (BLAKE2b) Companion. If Datum (BLAKE2b) Companion is already installed, use that gateway and skip this app. Umbrel Home and Umbrel Pro are Intel, so they pull the amd64 image. A Raspberry Pi pulls the arm64 image from the same pin. The StartOS package on [the gateway page](https://github.com/RouteHash-com/routehash-start9-gateway) is the AMD or Intel package. A Raspberry Pi running StartOS does not have a gateway package in that release. A Raspberry Pi running Umbrel installs this app from this store. The listing stays beta until a live Umbrel install is confirmed.

The setup notes are in [routehash-gateway](routehash-gateway).

## Blake2b Pool Balance

Blake2b Pool Balance is for a person who already mines Blake2b through their own DATUM gateway and does not want one pool to hold more of the XBT network than they are willing to help it hold.

About once a minute it reads the pools that have published a size limit. When the pool this gateway is on would pass the share this machine will help one pool hold, it moves Pool Host to a pool that still has room. The share on this machine starts at 30 percent of global XBT hashrate. House Pool is the last stop, already filled in as `pool.routehash.com:28915`, so the rig keeps hashing when every other pool is full. A pool operator uses the other card on the same page to publish that pool's own limit. The miners on a pool do not opt in. Only this gateway moves, and only after you turn that on.

It sits beside the DATUM gateway you already run. It does not install DATUM, and it does not replace RouteHash Datum Gateway. It has no miner port. The ASICs stay on the gateway. The settings page is port **7156**.

Umbrel builds this app on the machine, from this app folder. Umbrel Home and Umbrel Pro are Intel, so they build the amd64 image. A Raspberry Pi builds the arm64 image. This listing is version 0.1.4. It is the same app as 0.1.3, and it installs on umbrelOS 1.x and on umbrelOS 2.0. The StartOS release has an AMD and Intel file and a Raspberry Pi file. A Raspberry Pi running Umbrel installs this app from this store.

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
