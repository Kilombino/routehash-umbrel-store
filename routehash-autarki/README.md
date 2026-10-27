<p align="center">
  <img src="icon.png" alt="Autarki" width="128">
</p>

# Autarki - Wallet / Nostr Shop

No platform. Just the sale.

Autarki is the wallet and the Nostr shop on the Umbrel you already run. That Umbrel can be an AMD or Intel machine, an Umbrel Home, an Umbrel Pro, or a Raspberry Pi, on umbrelOS 1.x or umbrelOS 2.0. This listing is version 0.1.6. A wallet from 0.1.5 stays. A PC, Umbrel Home, and Umbrel Pro use the amd64 program. A Raspberry Pi uses the arm64 program. A merchant builds the order on the page. Use it as an in-person point of sale, or set the shop to Online and take the order over Nostr. The same page hires a listed rig, and an online order can be shipped. The words, the shop book, and the sale stay on that Umbrel.

The name in the RouteHash app store is **Autarki - Wallet / Nostr Shop**.

This store is the RouteHash community store. It is not the official Umbrel App Store.

<p align="center">
  <img src="https://raw.githubusercontent.com/RouteHash-com/autarki/main/shop.png" alt="Autarki shop page for Sunrise Coffee Shop, with one bagel on the order and the Check-Out button" width="440">
</p>

## What you get

One page: Shop, Receive, Send, Balance, Ledger, Store, Mining, and Settings. Mining stays hidden until you save a RouteHash account under Settings. Open Mining Invoices on Balance follows that same account.

The first screen creates the wallet. Write the 24 words on paper before you leave that screen. A password for this copy is optional. Leave it blank and the 24 words stay in the clear, so a backup of this app is then the seed. A native SegWit phrase can be imported on that same screen. After that import you can set a password, or leave the copy unlocked.

The shop opens as a point of sale. A guest at the counter uses Pay Counter, and the clerk ticket shows the last four characters of the order. Set the shop to Online when the sale is not at the counter. Online hides Pay Counter and that ticket. Publish announces the choice. Until you publish, customers still see the counter.

Nostr is how a shop is found, and how an order reaches that shop, without a website of your own. Publish announces the shop name, the products for sale, and which nodes should receive an order. Check for orders brings a new order onto Check Outs. Paying is still a coin, cash, a card, or Lightning. The order itself does not move the money. When the clerk marks a counter sale paid, the customer's page shows that order under Ledger, then Receipts.

The three chains are ordinary XBT, SHA-256d, and XBTC. XBTC is the third chain. Ordinary XBT and SHA-256d use Autarki's servers until you connect your own node under Settings, then Coin Nodes. A silent-payment code for an address of yours is used only after that node is connected. Until then the page gives a normal address. Paying a shop order uses the stall's silent-payment code from that order. A code you type on Send uses your own node. XBTC uses Autarki's public node until you connect your own. Where this copy includes Autarki's XBTC node, that node is used until you connect your own. The StartOS package and the Umbrel package do not include that node. Nostr uses Autarki's public node until you add another. Blake2b Lightning and SHA-256 Lightning are your own nodes. The seed stays in this wallet. The longer notes on those cards stay closed until you open them. The address, the certificate, and the channel amount stay on the page.

On Receive, Send, Balance, and the till, the ordinary Bitcoin chip says BTC. Under Settings, then SHA-256 Lightning, the save button says Save BTC Lightning. Remove this node, under Settings, then Coin Nodes, hides that chain on those screens, on checkout, and on Check Outs. Use this node brings it back. The choice stays in this browser. A saved connection stays on this computer.

Umbrel's Bitcoin app is Bitcoin Core. Autarki does not use it as the XBT node. This install does not require Bitcoin Knots or Bitcoin Core. RouteHash Gateway is a separate app in this store, and that app does require Bitcoin Knots.

## Ship an online order

An online shop asks Ship or Pick up before the order is sent. There is no default. Pick up pays the shop directly, the same as a counter sale. A shipment pays with Lightning. The shop marks it shipped. The customer marks it received. The shop's node holds the coins until the customer marks the order received. Tracking is a note on the order. If the customer does not mark it received, the hold ends and the coins return to the customer. The shop's node has to stay on for that window.

Each open order shows Ordered by and a short public name. On a customer wallet, Balance keeps See open orders and opens Shop. On the shop's wallet, an order that is still open opens Ledger, then Check Outs.

The stall card shows the shop's short public name, the day the stall note was signed, and the payment codes. It shows how many shipments this wallet has marked received, and how many are still unfinished.

## Hire a listed rig

Save a RouteHash account under Settings. The account is the one on https://routehash.com. That account unlocks Mining. Hire a listed Blake2b rig with XBT, or a listed SHA-256 rig with BTC.

Mine writes a Lightning invoice for accepted shares and waits until you click Pay. Paying it starts that rig only. The button says Pay to start on the first invoice, and Pay to keep on a later invoice for a rig that is already hashing. Add Hash puts another rig on the same card. Blake2b is one card. SHA-256 is the other card.

Hours from balance uses the confirmed balance on that account for the rig's minimum time. The first click quotes the hire. The second click spends it. Nothing is spent until you click Mine or confirm those hours.

The card shows the work still paid for. The countdown starts when the rig is hashing. Before payment the card shows the time you bought. The payout address is on the card while a hire is running or waiting for payment. You can remove a hire that is still waiting, or stop one that is hashing.

Balance lists Open Shop Orders. Once the RouteHash account is saved, it also lists Open Mining Invoices for a hire that is running or waiting for payment.

## Install

1. On Umbrel, open the App Store.
2. Open community app stores.
3. Add this address:

```
https://github.com/RouteHash-com/umbrel-store
```

4. Open **RouteHash app store**.
5. Under **Bitcoin**, install **Autarki - Wallet / Nostr Shop**.

If the store still shows 0.1.5, remove this community store and add the same address again. Do the same when Autarki is missing from the list, or when an install fails after you update to umbrelOS 2.0, so Umbrel downloads the current list.

This listing is version 0.1.6. Umbrel uses that version to offer the update. A wallet from 0.1.5 stays.

Umbrel opens the page on port **8473**. The program listens on port **4173** inside the app.

The shop opens first, until the wallet exists. After that, the page opens on Receive. Write the 24 words on paper before you leave the first screen.

## Which machine

Umbrel builds the image on the machine that installs the app.

| Machine | Program |
| --- | --- |
| AMD or Intel, including Umbrel Home and Umbrel Pro | `bin/autarki-amd64` |
| Raspberry Pi | `bin/autarki-arm64` |

StartOS uses different names for the same two machines. An AMD or Intel server uses `x86_64`. A Raspberry Pi uses `aarch64`. Those packages, the image archives, and the pictures are on the package page:

https://github.com/RouteHash-com/autarki

## Check the files

From this directory:

```
sha256sum -c SHA256SUMS
```

Each line ends in `OK` when that file matches. A partial download does not.

| Program | SHA-256 |
| --- | --- |
| `bin/autarki-amd64` | `9bd4bf371fffa422ebcbbecce746cd1f47c9f685da2d5adf149bf9d242f483db` |
| `bin/autarki-arm64` | `d1f00978207759b368c4ef153a734588d97ed8f50564f3484ded0ba7f1d9ff79` |

## First sale

Open Shop. Add the items. Read the tax lines and the estimated total. Write a note if the guest asked for one.

At the counter, press Check-Out. For an online order, publish the shop under Store, then Nostr, and press Check for orders when a customer has sent one.

The guide on the server is under Settings, then Read the guide.

## What is in this folder

The compiled program for each machine, the image recipe, and the Umbrel listing. The program source is not in this folder.

The package page has the StartOS packages, the Umbrel image archives, the checksums, and the pictures. It does not contain the program source.

https://github.com/RouteHash-com/autarki
