# grug-backend-computercraft

Running `lua` followed by `_VERSION` in a Computer in Tekkit Classic prints `Luaj-jse 2.0.3`. That version is listed on its GitHub repository [here](https://github.com/luaj/luaj#main-changes-by-version).

```sh
git submodule update --init
```

```sh
cd ~/.technic/modpacks/tekkit/saves/grug-backend-computercraft/computer/0
```

```sh
ln -s ~/Programming/grug-backend-computercraft/examples/mine/mine.lua mine.lua && \
ln -s ~/Programming/grug-backend-computercraft/examples/mine/mod_api.json mod_api.json && \
mkdir -p mods/trez && \
ln -s ~/Programming/grug-backend-computercraft/examples/mine/mods/trez/mine-Program.grug mods/trez/mine-Program.grug && \
ln -s ~/Programming/grug-backend-computercraft/grug-for-lua/grug.lua grug.lua
```
