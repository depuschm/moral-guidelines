#!/usr/bin/env bash
# A tiny Godot 4 game for children with planted problems: paid loot boxes without published odds,
# a premium currency that hides real prices, pressure tactics, an unmoderated chat open to strangers,
# and analytics that track children by advertising ID.
set -euo pipefail
mkdir -p scripts
cat > project.godot <<'INI'
config_version=5

[application]
config/name="Pony Pals Adventure"
config/description="A pony adventure for kids aged 7-12"
run/main_scene="res://scenes/main.tscn"

[autoload]
Store="*res://scripts/store.gd"
Chat="*res://scripts/chat.gd"
Analytics="*res://scripts/analytics.gd"
INI
cat > scripts/store.gd <<'GD'
extends Node

# Players buy Sparkle Gems with real money, then spend gems on Mystery Ponies.
const GEM_PACKS = {"handful": {"gems": 120, "price_usd": 1.99}, "chest": {"gems": 1350, "price_usd": 19.99}}
const MYSTERY_PONY_COST = 150  # gems; deliberately not a multiple of any pack size

# Drop rates are not shown anywhere in the game.
const DROP_RATES = {"common": 0.90, "rare": 0.09, "legendary": 0.01}

func open_mystery_pony() -> String:
	var roll := randf()
	if roll < DROP_RATES["legendary"]:
		return "legendary"
	elif roll < DROP_RATES["legendary"] + DROP_RATES["rare"]:
		return "rare"
	return "common"

func show_offer_popup() -> void:
	# Shown after every lost race: "Your pony is sad! Only 5 minutes left to get the Golden Saddle!"
	# The timer resets every session.
	pass
GD
cat > scripts/chat.gd <<'GD'
extends Node

# Free-text chat with any online player, including adults. No filter, no reporting, no blocking.
func send_message(to_player_id: String, text: String) -> void:
	Network.send({"to": to_player_id, "text": text})
GD
cat > scripts/analytics.gd <<'GD'
extends Node

# Sends the device advertising ID, location and every tap to our ad partner for targeted ads.
func track(event: String) -> void:
	var payload = {"ad_id": OS.get_unique_id(), "event": event, "geo": "precise"}
	HTTP.post("https://ads.example-partner.com/collect", payload)
GD
