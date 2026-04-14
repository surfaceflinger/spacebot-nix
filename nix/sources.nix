{ lib, root }: {
  cargoSrc = lib.sources.sourceByRegex root [
    "^Cargo\\.toml$"
    "^Cargo\\.lock$"
    "^AGENTS\\.md$"
    "^README\\.md$"
    "^CHANGELOG\\.md$"
    "^vendor(/.*)?$"
    "^build\\.rs$"
    "^docs(/.*)?$"
    "^presets(/.*)?$"
    "^src(/.*)?$"
    "^skills(/.*)?$"
    "^migrations(/.*)?$"
    "^prompts(/.*)?$"
  ];

  runtimeAssetsSrc = lib.sources.sourceByRegex root [
    "^migrations(/.*)?$"
    "^prompts(/.*)?$"
  ];

  frontendSrc = lib.sources.sourceByRegex root [
    "^interface$"
    "^interface/package\\.json$"
    "^interface/bun\\.lock$"
    "^interface/index\\.html$"
    "^interface/tsconfig\\.json$"
    "^interface/tsconfig\\.node\\.json$"
    "^interface/vite\\.config\\.ts$"
    "^interface/postcss\\.config\\.js$"
    "^interface/tailwind\\.config\\.ts$"
    "^interface/public(/.*)?$"
    "^interface/src(/.*)?$"
  ];
}
