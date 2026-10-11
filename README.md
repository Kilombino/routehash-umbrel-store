# umbrel-store

RouteHash apps for Umbrel.

In Umbrel: **Settings → App stores → Add a community app store** and paste:

```
https://github.com/RouteHash-com/umbrel-store
```

Then install **RouteHash Gateway**. It needs Umbrel **Bitcoin Knots** 29.4.2 (store app 1.2.18, Léo Haf / Retropex). ASICs stay on this gateway’s miner port **23339**. Pool Host is prefilled `pool.routehash.com:28915`.

**Blake2b Pool Balance** is the second app. It does not replace RouteHash Gateway and it does not install DATUM. It sits beside the gateway you already run. Settings page port **7156**. Copy says beta until a live Umbrel install is confirmed. ASICs stay on the gateway miner port. Never put 28915 on an ASIC.
