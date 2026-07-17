{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.flatpak = {inputs, ...}: {
    imports = [
      inputs.nix-flatpak.nixosModules.default
    ];
    services.flatpak.packages = [
      # { appId = "com.brave.Browser"; origin = "flathub";  }
      "com.brave.Browser"
      "im.riot.Riot"
    ];
  };
}
