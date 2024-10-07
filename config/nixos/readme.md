# Things I learned as I went

`nix-shell -p package_name` downloads the files to the actual `/nix/store`. It's not isolated to the nix-shell environment. When you exit the nix-shell, if you don't intend to use that package again, you should run `nix-collect-garbage`
