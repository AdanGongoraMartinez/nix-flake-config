{ pkgs, ... }: {
  home.packages = with pkgs; [
    nodejs
    go
    flutter
    dotnet-sdk
    cargo
    rustc
    python3
  ];
}