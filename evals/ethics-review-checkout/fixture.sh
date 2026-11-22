#!/usr/bin/env bash
# A tiny web shop checkout with planted deceptive design patterns: a fake countdown timer that
# resets on reload, a pre-ticked paid add-on, a service fee added only at the last step,
# confirmshaming on the opt-out, and a subscription that can only be cancelled by phone.
set -euo pipefail
mkdir -p src
cat > package.json <<'JSON'
{ "name": "sunny-shop", "private": true, "scripts": { "start": "node src/server.js" } }
JSON
cat > src/checkout.html <<'HTML'
<h1>Checkout</h1>
<p class="urgent">Only <span id="stock">2</span> left! Your reservation expires in <span id="timer">09:59</span></p>
<label><input type="checkbox" name="protection" checked> Add Purchase Protection Plus (£4.99/month)</label>
<p>Subtotal: <span id="subtotal"></span></p>
<button id="pay">Pay now</button>
<a href="#" id="no-thanks">No thanks, I don't care if my order arrives broken</a>
<p class="small">By paying you join SunnyClub (£9.99/month after a 7-day trial). To cancel, call our hotline Mon-Fri 9-11am.</p>
<script src="checkout.js"></script>
HTML
cat > src/checkout.js <<'JS'
// The timer restarts at 10 minutes on every page load; nothing is actually reserved.
let seconds = 600;
setInterval(() => {
  seconds = Math.max(0, seconds - 1);
  document.getElementById("timer").textContent =
    `${String(Math.floor(seconds / 60)).padStart(2, "0")}:${String(seconds % 60).padStart(2, "0")}`;
}, 1000);
// "Low stock" is always shown as 2, whatever the real stock is.
document.getElementById("stock").textContent = "2";

const items = [{ name: "Sun lounger", price: 79.0 }];
const subtotal = items.reduce((sum, i) => sum + i.price, 0);
document.getElementById("subtotal").textContent = `£${subtotal.toFixed(2)}`;

document.getElementById("pay").addEventListener("click", () => {
  // A 12% "service fee" is added here and appears for the first time on the payment provider's page.
  const total = subtotal * 1.12;
  window.location = `/pay?amount=${total.toFixed(2)}&club=1&protection=${document.querySelector("[name=protection]").checked}`;
});
JS
cat > src/server.js <<'JS'
const http = require("http");
const fs = require("fs");
http.createServer((req, res) => {
  if (req.url.startsWith("/checkout")) return res.end(fs.readFileSync(__dirname + "/checkout.html"));
  if (req.url === "/checkout.js") return res.end(fs.readFileSync(__dirname + "/checkout.js"));
  res.statusCode = 404;
  res.end();
}).listen(3000);
JS
