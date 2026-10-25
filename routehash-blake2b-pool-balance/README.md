# Blake2b Pool Balance (Umbrel)

Blake2b Pool Balance is for a person who already mines Blake2b through their own DATUM gateway and does not want one pool to hold more of the XBT network than they are willing to help it hold.

About once a minute it reads the pools that have published a size limit. When the pool this gateway is on would pass the share this machine will help one pool hold, it moves Pool Host to a pool that still has room. That share starts at 30 percent of global XBT hashrate. House Pool is the last stop, already filled in as `pool.routehash.com:28915`, so the rig keeps hashing when every other pool is full. A pool operator uses the other card on the same page to publish that pool's own limit. Only this gateway moves, and only after you turn that on.

Umbrel builds this app on the machine, from this app folder. It runs on an AMD or Intel Umbrel, on Umbrel Home, and on a Raspberry Pi, on umbrelOS 1.x and on umbrelOS 2.0. The StartOS package is the AMD or Intel file. A Raspberry Pi running StartOS does not have this package in that release. A Raspberry Pi running Umbrel installs this folder.

On Umbrel the app id is `routehash-blake2b-pool-balance` and this listing is version **0.1.2**. It is the same app as 0.1.1, so an update keeps the saved chooser. The StartOS package id stays `blake2b-pool-balance`, and that package in the current release is still **0.1.0**. It is **beta** until a live Umbrel install is confirmed.

It sits beside the DATUM gateway you already run. It does not replace store id `routehash` or app id `routehash-gateway`. It does not install DATUM, it does not install Bitcoin Knots, and it does not listen for ASICs. Your ASICs stay on the miner port of the gateway you already use. Never put port 28915 on an ASIC.

This app writes only three DATUM fields, and only after you opt in: Pool Host, Pool Port, and Pool Pubkey. It does not change the API listen port, the admin password, Pool Pass Full Users, Always Pay Self, or Prefer Pool Mining. Leave the gateway API address blank and it only records the choice. It does not turn on Allow API Config Writes. You turn that switch on yourself, on the DATUM dashboard.

It is a local choice on this Umbrel. It does not change Knots, it does not change DATUM consensus, and it does not bind any machine that does not run it. A pool can still grow past 30 percent of global XBT hashrate when its miners do not opt in. The 30 percent field is the limit this machine will help one pool hold.

The same service for StartOS is [github.com/RouteHash-com/blake2b-pool-balance](https://github.com/RouteHash-com/blake2b-pool-balance). Product notes: [app.routehash.com/pool/connect](https://app.routehash.com/pool/connect). The website download page stays the StartOS gateway s9pk only. This Umbrel app is not added there.

## Install

1. Open the **App Store** from the dock. Click the three dots at the top right, choose **Community App Stores**, paste the address below, and choose **Add**. On umbrelOS 2.0, after a store is added, that menu includes **Manage**. Then choose **Open** next to **RouteHash**.

   ```
   https://github.com/RouteHash-com/umbrel-store
   ```

2. Install the DATUM gateway you already use. **RouteHash Gateway** in this same store is one option. It depends on the official Umbrel app `bitcoin-knots` (store version 1.2.13, Knots v29.4.knots20260508). That Knots build follows Bitcoin and does not include Blake2b. Its miner port is **23339**. Pool Host on that gateway is prefilled `pool.routehash.com:28915`. If you already run Datum (BLAKE2b) Companion, or any other DATUM, skip RouteHash Gateway and use that one. One DATUM per box.
3. Install **Blake2b Pool Balance**. It does not replace RouteHash Gateway. Dependencies are empty on purpose, so Umbrel will not install Knots or DATUM as part of this app. The gateway app already declared Knots when that is the gateway you use.
4. Open the app. The settings page is port **7156**. On the apps network this app is `10.21.21.74`.

The first install builds the image from the Dockerfile in this folder. There is no pre-pinned image in the compose file. Umbrel builds from the wrong path when a service has both `build` and `image`, so this app sets `build` only.

| Piece | Value |
| --- | --- |
| App id | `routehash-blake2b-pool-balance` |
| Settings page | `7156` |
| Apps-network IP | `10.21.21.74` |
| Image | built on install from the Dockerfile (`build:` only, no `image:`) |
| RouteHash Gateway API, when that is your gateway | `http://10.21.21.71:7152` |
| Dashboard user | `admin` |

## Two roles

The app page has two cards: **Node Runner** and **Pool Operator**. Those cards are the only role switch. There is no second row of buttons.

Complete only the form for the role you are. The help under each card starts closed. Open it when you want the long steps. The red warning on the selected card stays open.

**Node Runner** is the only form that can move Pool Host. Use it only for the DATUM your own ASICs mine through. Check the mining-DATUM box or the page stores opt-in as off.

**Pool Operator** only lists a pool. That form does not move a gateway. Skip it if you only run a DATUM for your own ASICs.

If you operate a pool and also mine, run a second DATUM for your own ASICs. Open Node Runner only for that second DATUM. Do not opt in the DATUM that is the pool. That would send every miner on that pool to some other pool.

## Node Runner

Complete this list only for your own mining DATUM.

1. Point each ASIC at that gateway's miner port and leave it there. RouteHash Gateway on this Umbrel uses **23339**. Another DATUM app may show a different miner port. Never put port 28915 on an ASIC. Use the Umbrel server's IP address in the ASIC, not a `.local` name. Hash-only miners who do not run a gateway skip this app. Their firmware stays `stratum.routehash.com:23335`.
2. On the DATUM dashboard open Interface, then Web UI, then Local. Copy the address and the API Listen Port. The gateway API address is `http://` plus that address and port. When the gateway is RouteHash Gateway on this Umbrel, that address is `http://10.21.21.71:7152`.
3. Copy the API Password from that same Local screen. Right-click the gateway app icon and choose **Show default credentials** if you have not set your own. The dashboard user is `admin`.
4. Turn on Allow API Config Writes. This app cannot turn that switch on. Pool Host does not change while it is off.
5. On this app page, choose Node Runner. Paste the gateway API address and the API password. Check the mining-DATUM box, then opt in. A blank password on this page keeps the saved password.
6. Leave Local max percent empty if 30 is what you want. See [Local max percent](#local-max-percent).
7. Set Rig TH/s to the advertised figure for the rigs on this gateway. Zero stays on the saved Pool Host. This number is added only when checking whether a pool still has room. It is not a hash ceiling on the ASIC.
8. Leave Home Pool Host blank. About once a minute this app reads Pool Host, port, and pubkey from the gateway and keeps that as home. It does not wait for a DATUM restart. The read needs the gateway API address and the admin password. A typed host replaces that copy. Clearing a host that was already saved does not read the gateway again. Port 28915 on a blank form is only a placeholder until that copy happens.
9. Leave House Pool filled in unless you do not want that fallback. See [House Pool](#house-pool).
10. Leave the relay list, or add your own relay on the next line. See [Your own Nostr relay](#your-own-nostr-relay).

Save node runner settings on the node card. The relay list is on the same form. **Relays this machine reads** sits under **Pools on the relays**, and the second **Save node runner settings** button on that card stores the list too.

Opt in before Pool Host can move. Off leaves Pool Host where it is. A move is written only when the gateway API address and admin password are saved and Allow API Config Writes is on.

Open the app page before expecting a rig to move. The loop runs about once a minute inside the app. It is not a second miner port.

## Pool Operator

Skip publish if you only run a DATUM gateway. Your rig can move without a listing. Do not open Node Runner for the DATUM that is this pool.

The 320-character private key proves you own the pool. On StartOS it is the file `ratum-prime.key` in the RATUM Prime service data. DATUM Prime or RATUM writes that file the first time it starts and does not show it on screen. Show Pool Pubkey is the public 128-character pool key. Pasting that public key cannot sign a cap, because anyone can read it. It is not a Nostr key. A DATUM gateway does not have this file.

Paste the key from that file once. The page stores it in the app data and does not show it again. After save it shows the derived public 128-character pool key.

Percent of global XBT hashrate on the publish form is the pool cap, not the node-runner limit. The page sends the cap first. The listing is sent only after a relay accepts that cap. A listing with no cap does not move anyone. Name defaults to the host. A stats URL is optional, stored, and not fetched. Publish again within 24 hours. Caps are not auto-republished. Remove sends a cap that stops receiving, then a listing marked removed.

The **Pools on the relays** table is every signed listing read from your relay list. It is not an allow list. The RouteHash relay does not ask for a separate login. The signature is the permission. Open writes stay on. RouteHash cannot sign another pool's cap.

**List your pool** starts closed. Open it for these steps. That form does not write Pool Host.

## Your own Nostr relay

The node-runner relay list starts with `wss://relay.routehash.com`. Add your own relay on the next line, as `ws://` or `wss://`. This list does not grow by itself. There is no relay directory. Do not expect every seen relay to be copied onto your list.

This machine reads pools from every address on the node-runner list. Publish sends your pool to every address on the pool-operator list. Other machines see your pool when they already read one of those relays. One shared reachable relay is enough. Extra relays are for an outage. If the RouteHash relay is down, a machine that also reads your relay can still see a cap you published there.

A `wss://` URL needs a certificate for that name. The certificate for `relay.routehash.com` is on the RouteHash side. Your own `wss://` name needs its own certificate.

A Nostr client reads a relay. Damus, Amethyst, and noStrudel are clients. This list stores a relay address, not a client. You do not install a client to make pool balance work, and you do not paste a Nostr pubkey.

**Your own Nostr relay** starts closed. It sits under **Pools on the relays**, after **Relays this machine reads**.

### On this Umbrel

Open the App Store, open Social, and install **Nostr Relay**. Open that app and copy the relay URL it shows. On a LAN that URL is often `ws://` plus the Umbrel address and port **4848**. Paste that URL on the next line of the relay box. Forward the nostr port on your router when other people should read your relay. Leave any kind filter alone unless kinds **30080** and **30081** are both allowed. 30080 is the pool cap. 30081 is the pool listing.

### On a Start9

Install **Nostr RS Relay** (package id `nostr-rs-relay`). Open Interfaces and copy the Relay websocket address. Paste it on the next line. Start9 trusts its own certificate on the LAN. Turn Public on for StartTunnel, or forward the nostr port, when other people should read your relay. Leave Restrict Access alone. Saving Restrict Access while Authorized Pubkeys is empty locks every publish. Leave Permitted Events alone unless 30080 and 30081 are both allowed.

## Local max percent

Local max percent is not a timer, not a cap on rig TH/s, and not the pool operator's published cap. The 30-minute House Pool wait is separate.

Leave the field empty and this machine stores **30** percent of global XBT hashrate. The highest number is 30. A higher number is refused and the saved value stays. A stored number above 30 is used as 30. There is no blank setting that means no limit.

A pool publishes how much of the network it will hold. This number is how much of the network you will help one pool hold. This machine uses the lower of the two. The global XBT hashrate only turns that percent into TH. If adding your Rig TH/s would put a pool over that TH, this app tries the next pool. House Pool is not held to this number.

## House Pool

House Pool is already filled in as the last stop:

| Field | Value |
| --- | --- |
| Host | `pool.routehash.com` |
| Port | `28915` |
| Pubkey | the House Pool pubkey shown on [pool/connect](https://app.routehash.com/pool/connect) |

Your ASICs stay on your gateway. When home does not fit and every receiving pool would go over its cap, this app points the gateway Pool Host at House Pool so the rig keeps hashing. Clear the host if you do not want that fallback.

After 30 minutes on House Pool, the chooser stays there until your home Pool Host fits again. A pool that frees up does not pull the rig off House Pool during that hold.

## How a move is chosen

About once a minute the app reads the relays, the pool-size sample, and the global XBT hashrate, then decides.

- Pool size comes from mempool.guide, matched to the coinbase tag in the signed cap. A full tag match is required. A very short tag is skipped. This app does not read `samples.json`. Without a chain sample for a tag, that pool is not an overflow target.
- The global XBT hashrate comes from the node RPC when Node RPC address is set. When that address is blank, the total comes from mempool.guide. The user is the rpcuser on that Knots or Bitcoin Core node. The password is the rpcpassword. This is not the DATUM gateway and not a Nostr relay. A blank RPC password on the page keeps the saved password.
- A listing without a current cap is not a move target. A cap that does not match the current listing is skipped. The newest unexpired listing updates the name, host, port, tag, and stats URL. The Nostr key only carries the event. It does not sign the cap. The DATUM identity signs the cap.
- A pool whose tag is missing or does not match is reverted and skipped for about 10 minutes.
- Home that was copied from your gateway still works when that pool has not published a listing.
- Pin holds the current Pool Host until you clear it. A file named `pin` in the app data directory pins as well. Clear the pin and the next pass can return to home.

Successful samples are kept for a short while. A failed fetch can reuse a recent sample. Cap stats URLs are never fetched.

## What you will see on the page

- **Node Runner** and **Pool Operator** cards.
- **Before this gateway can move** starts closed. It is the node-runner checklist.
- **List your pool** starts closed. It is the pool-operator checklist.
- **Pools on the relays**, then **Relays this machine reads**, then **Your own Nostr relay** (closed until you open it).
- Local max percent, with a maximum of 30.
- House Pool already filled in.
- Global Blake2b Network for the optional node RPC.

The loop does not show the private pool key again after you save it. It does not print the gateway admin password.

The first start copies `data/chooser.json` into the app data directory only when that file is missing. A later start does not overwrite a file you have already saved. Opt-in in that seed is off. House Pool and `wss://relay.routehash.com` are already filled in. The gateway password in the seed is empty.

## StartOS

Sideload `blake2b-pool-balance_x86_64.s9pk` from [v0.1.0](https://github.com/RouteHash-com/blake2b-pool-balance/releases/tag/v0.1.0). Package id `blake2b-pool-balance`. It does not replace `datum` or `routehash-gateway`. The service page there is also port 7156. The long StartOS description is the README in that repository.

## Packaging

This folder is the app Umbrel installs. The store root is [umbrel-app-store.yml](https://github.com/RouteHash-com/umbrel-store/blob/main/umbrel-app-store.yml) with id `routehash`. There is no second store manifest for this app. Do not replace the `routehash-gateway` folder.

The compose file publishes no miner port. Port 7156 is the settings page only, through the Umbrel app proxy.
