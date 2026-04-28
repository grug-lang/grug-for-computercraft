# grug for ComputerCraft

This repository provides example [ComputerCraft](https://feed-the-beast.fandom.com/wiki/ComputerCraft) programs that show how to run [grug](https://github.com/grug-lang/grug) code using [grug-for-lua](https://github.com/grug-lang/grug-for-lua).

## Examples

You can run any example yourself by copying the files and directories from the example into the Computer or Turtle.

> [!IMPORTANT]
> Every example requires [`grug.lua`](https://github.com/grug-lang/grug-for-lua/blob/main/grug.lua). Download it and place it inside the example's folder.

There are examples for:
- ComputerCraft 1.33 ([Tekkit Classic](https://www.technicpack.net/modpack/tekkit.552560), Minecraft 1.2.5, Lua 5.1)
- [CC: Tweaked](https://tweaked.cc/) (TODO:, Minecraft TODO:, Lua TODO: x.y)
- OpenComputers 1.11.20-GTNH ([GregTech: New Horizons 2.8.4](https://wiki.gtnewhorizons.com/wiki/Installing_and_Migrating), Minecraft 1.7.10, Lua 5.3)
    - See the [OpenComputers Tutorial](https://github.com/grug-lang/grug-for-computercraft/blob/main/README.md#opencomputers-tutorial) at the bottom of this readme.

### Example: `examples/mine/`

This is a mining program:

<video src="https://github.com/user-attachments/assets/532bd12c-8564-40d4-9b73-c56606616f19" width="100%" autoplay controls loop muted></video>

<video src="https://github.com/user-attachments/assets/f17df6c3-0837-463e-9b90-96ed8548e777" width="100%" autoplay controls loop muted></video>

#### OpenComputers installation commands

Paste these lines one-by-one into your robot's terminal using middle mouse button:
```bash
wget https://raw.githubusercontent.com/grug-lang/grug-for-lua/refs/heads/main/grug.lua
mkdir mods/foo
wget https://raw.githubusercontent.com/grug-lang/grug-for-computercraft/refs/heads/main/examples/mine/mods/foo/mine-Program.grug mods/foo/mine-Program.grug
wget https://raw.githubusercontent.com/grug-lang/grug-for-computercraft/refs/heads/main/examples/mine/mine_opencomputers.lua mine.lua
wget https://raw.githubusercontent.com/grug-lang/grug-for-computercraft/refs/heads/main/examples/mine/mod_api.json
mine
```

## OpenComputers Tutorial

The [official OpenComputers robots tutorial on YouTube](https://youtu.be/jo9xrnDXhGg?si=09i2ijmphEmZCEjp) is 11 years old, and a little outdated.

Here is my tutorial for GregTech: New Horizons 2.8.4:
1. Place down an `Electronics Assembler` and open it.
2. Put a `Computer Case (Tier 2)` in its top-left slot.
3. Put these items in the other top-left slots:
    - `Keyboard`
    - `Screen (Tier 1)`
    - `Inventory Upgrade`
4. Put these items in the top-right slots:
    - `Internet Card`
    - `Central Processing Unit (CPU) (Tier 1)`
    - `EEPROM (Lua BIOS)`
    - `Graphics Card (Tier 1)`
    - Two `Memory (Tier 2)`
    - `Hard Disk Drive (Tier 1) (1 MB)`
5. Put a `Disk Drive` in the bottom-left slot.
6. Click the `Assemble` button in the bottom-left corner.
7. Grab the assembled robot out of the top-left slot.
8. Place the robot down, and open it.
9. Add an `OpenOS (Operating System)` floppy disk in the bottom-right corner.
10. Press the `Turn on` button in the bottom-left corner.
11. Run the `install` command to install OpenOS from the floppy disk. Remove the floppy disk afterwards.
12. Put a pickaxe, say a `Drill (LV)`, in its tool slot (one slot left of the floppy disk slot).
13. Check that the robot can mine the block in front of it by running `lua` and then `robot.swing()`.
