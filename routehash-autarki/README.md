# Autarki

One wallet and one shop on this Umbrel. The name in the RouteHash app store is **Autarki**. Umbrel's id for it is `routehash-autarki`, and this folder uses that same id.

Umbrel lists a community app only when the id starts with the store id `routehash` and the folder name matches that id. A folder named `autarki` stays hidden.

## Install

1. Add this community store:

```
https://github.com/RouteHash-com/umbrel-store
```

2. Open **RouteHash app store**.
3. Under **Bitcoin**, install **Autarki**.

This install does not require Bitcoin Knots or Bitcoin Core. RouteHash Gateway is the mining app in the same store. That app does require Bitcoin Knots.

If Autarki is missing, remove the community store and add the same address again so Umbrel downloads the current list.

The first screen creates the wallet. Write the 24 words on paper before you leave that screen. A password for this copy is optional. If you leave it blank, the 24 words stay in the clear, and a backup of this app is then the seed.

Ordinary XBT and SHA-256d use Autarki's public servers until you connect your own node under Settings, then Coin Nodes. Nostr uses Autarki's public node until you add another. A silent-payment code needs your own node. XBTC has no public server in this package.

Umbrel opens the page on port **8473**. The program listens on port **4173** inside the app.

Umbrel builds the image on the machine that installs the app. An AMD or Intel machine uses `bin/autarki-amd64`. An Umbrel Home or a Raspberry Pi uses `bin/autarki-arm64`.

## Check the files

From this directory:

```
sha256sum -c SHA256SUMS
```

Each line ends in `OK` when that file matches.

## What is in this folder

The compiled program, the image recipe, and the Umbrel listing. The program source is not in this folder.

The public package page is [https://github.com/RouteHash-com/autarki](https://github.com/RouteHash-com/autarki). That page has the StartOS packages, the Umbrel image archives, the checksums, and the pictures. It does not contain the program source.
