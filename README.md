# RouteHash app store

Community apps for Umbrel. This store is separate from the official Umbrel App Store.

## Add the store

1. On Umbrel, open the App Store.
2. Open community app stores.
3. Choose add a community app store.
4. Paste this address:

```
https://github.com/RouteHash-com/umbrel-store
```

5. Open **RouteHash app store**.
6. Under **Bitcoin**, install the app you want.

Umbrel keeps the copy it already downloaded. If an app from the list below is missing, remove this community store and add the same address again.

## How Umbrel decides what to show

The store id in `umbrel-app-store.yml` is `routehash`. Umbrel lists a community app only when the app id starts with that store id, and only when the folder name is the same id. The name on the screen can be shorter than the id.

## Autarki

Autarki is the wallet and the shop. Use it at a counter or for online orders. In the store the name is **Autarki**. The id is `routehash-autarki`.

Install **Autarki** for the wallet. This listing is version 0.1.1. This install does not require Bitcoin Knots or Bitcoin Core. Until you add your own node, ordinary XBT and SHA-256d use Autarki's public servers, and Nostr uses Autarki's public node. Add a node later on the page, under Settings, then Coin Nodes. A silent-payment code needs your own node. XBTC uses Autarki's public node until you connect your own. The StartOS package and the Umbrel package do not include that node.

At the counter, Pay Counter and the clerk ticket stay on the page. A shop set to Online hides both. Publish announces that choice. Online orders arrive over Nostr. Paying is still a coin, cash, a card, or Lightning. The order does not move the money. When the clerk marks a counter sale paid, the customer's page shows that order under Ledger, then Receipts.

The install steps, the machine each program is for, and the checksums are in [routehash-autarki](routehash-autarki).

## RouteHash Gateway

RouteHash Gateway is the mining app. DATUM sits next to Bitcoin Knots and points at RouteHash. This install does require Bitcoin Knots, because the gateway reads block templates from that node. ASICs stay on miner port **23339**. Pool Host starts as `pool.routehash.com:28915`. Never put 28915 on an ASIC.

## Blake2b Pool Balance

Blake2b Pool Balance sits beside a DATUM gateway you already run. It does not install DATUM, and it does not replace RouteHash Gateway. It has no miner port. The settings page is port **7156**. The Umbrel id is `routehash-blake2b-pool-balance`. The notes are in [routehash-blake2b-pool-balance/README.md](routehash-blake2b-pool-balance/README.md).

## Check a download

An app folder that ships a program has a `SHA256SUMS` file. From that folder:

```
sha256sum -c SHA256SUMS
```

A matching file prints `OK`.

## What this store publishes

This store publishes Umbrel install files. For Autarki that is the compiled program, the image recipe, and the listing. The program source is not in this store.

The package page is [https://github.com/RouteHash-com/autarki](https://github.com/RouteHash-com/autarki). That page has the StartOS packages, the Umbrel image archives, the checksums, and the pictures. It does not contain the program source.
