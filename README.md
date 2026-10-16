# DragonfruitSpawn 1.1.0

DonutSMP-style spawn selector for DragonfruitSMP.

## Changes in 1.1.0

- Removed the large floating chest item from the dialog.
- Cleaner single-column spawn buttons.
- Added a 5-second teleport countdown in the action bar.
- Plays a note-block harp sound on each countdown tick.
- Plays a higher-pitched note-block sound when teleporting.
- Moving during the countdown cancels the teleport.
- Invalid/unloaded spawns cancel safely.

## Commands

- `/spawn`
- `/spawncreate <number>`
- `/spawnremove <number>`

## Permissions

- `dragonfruitspawn.use` — default true
- `dragonfruitspawn.admin` — default op

## Build

```bat
gradlew.bat clean build
```

Requires Java 25 for Paper 26.2.

The output JAR is in `build/libs/`.

Paper 26.2's ActionButton API does not expose a per-button ItemStack icon, so the actual chest body was removed rather than leaving the chest floating above the buttons. The buttons remain clean `Spawn 1`, `Spawn 2`, etc.
