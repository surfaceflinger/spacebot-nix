# spacebot-nix

Standalone Nix packaging for `spacebot`.

This repo tracks the upstream source as a flake input:

- `spacebot-src = { url = "github:spacedriveapp/spacebot"; flake = false; }`

That keeps Nix hash churn isolated here instead of in the main application repo.

## Common commands

Build upstream Spacebot:

```bash
nix build .#spacebot
```

Build against a local checkout while working on packaging:

```bash
nix build .#spacebot --override-input spacebot-src path:../spacebot
```

Enter the default dev shell:

```bash
nix develop
```

Update the upstream source revision in `flake.lock`:

```bash
nix flake lock --update-input spacebot-src
```

Update packaging inputs like `nixpkgs` or `crane`:

```bash
nix flake lock --update-input nixpkgs --update-input crane --update-input flake-utils
```

If frontend dependencies change, rebuild once and Nix will print the new expected hash for `frontendNodeModulesHash` in `nix/default.nix`.
