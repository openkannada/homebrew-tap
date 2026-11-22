# Open Kannada Homebrew tap

Homebrew formulae for [Open Kannada](https://github.com/openkannada) tools, for macOS and Linux.

```sh
brew install openkannada/tap/kannadi
kannadi to-unicode old-orders/ --out converted/
```

| Formula | What it installs |
|---|---|
| [`kannadi`](Formula/kannadi.rb) | The `kannadi` command from [openkannada/kannadi](https://github.com/openkannada/kannadi): converts Kannada documents typed in Nudi, Baraha, Nudi B-Akshara, Kan-Eng, Akruti and Shree-Lipi fonts to Unicode, and Unicode to Nudi. With its man pages and bash, zsh and fish completions. |

Each formula installs the prebuilt archive from the tool's GitHub Release and checks it against the release's SHA-256 checksum. Each tool's release workflow writes its formula, so please send changes and issues to the tool's repository.

## Related

- [kannadi](https://github.com/openkannada/kannadi): other ways to install, including Windows and from source.
- [The kannadi editor](https://openkannada.org/editor/): the same converter in your browser, with nothing to install.

## License

The formulae are under the MIT license or the Apache License 2.0, at your choice: see [LICENSE-MIT](LICENSE-MIT) and [LICENSE-APACHE](LICENSE-APACHE). Each tool keeps its own license.

Part of [Open Kannada](https://github.com/openkannada), free and open-source tools that make Kannada work properly on computers.
