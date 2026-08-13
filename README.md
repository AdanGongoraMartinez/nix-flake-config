# myNixos

Configuración declarativa de Nix y Home Manager. Esta flake sirve tanto para
NixOS como para **Fedora** (u otra distro) usando la configuración *standalone*
de Home Manager.

## Instalar Nix en Fedora

### Fedora 44 y posteriores (recomendado)

Fedora empaqueta Nix oficialmente con soporte SELinux, así que hay que instalar
el paquete en modo *multi-usuario* con el daemon:

```shell
sudo dnf install nix
sudo systemctl enable --now nix-daemon
source ~/.bashrc   # o ~/.zshrc según tu shell
```

Verificá que funcione:

```shell
nix-shell -p hello --run hello
```

### Fedora 39–43 o cualquier version vieja

Usá el instalador de Determinate Systems (maneja SELinux y OSTree sin que
tengas que desactivar nada):

```shell
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

> **AVISO:** el instalador oficial (`curl ... nixos.org/nix/install`) **no**
> soporta SELinux. Viene con SELinux deshabilitado por defecto en Fedora, así
> que NO lo uses salvo que sepas exactamente lo que hacés.

## Configurar Nix

### Habilita flakes (nivel usuario)

Creá `~/.config/nix/nix.conf` con:

```ini
experimental-features = nix-command flakes
```

### Sandbox (nivel sistema, multi-usuario)

```shell
sudo tee -a /etc/nix/nix.conf <<< "sandbox = true"
sudo systemctl restart nix-daemon
```

Verificá con `nix show-config | grep sandbox`.

## Usar esta flake en Fedora (Home Manager standalone)

La configuración de usuario está en [`home/`](home/) y se activa sin tocar nada
del sistema. Ajustá el usuario real en `home/default.nix`:

```nix
home.username = "adan";
home.homeDirectory = "/home/adan";
```

Luego aplicá la config de una de estas dos formas:

```shell
# Sin instalar nada extra (recomendado):
nix run .#homeConfigurations.mainnix.activationPackage

# Si ya tenés home-manager CLI:
home-manager switch --flake .#mainnix
```

La primera vez va a descargar y compilar todo el toolchain; puede tardar.

## Comandos básicos de Nix

| Comando | Qué hace |
| ------- | -------- |
| `nix profile install nixpkgs#<pkg>` | Instala un paquete permanentemente |
| `nix profile remove <pkg>` | Lo desinstala |
| `nix shell nixpkgs#<pkg>` | Entra a un shell temporal con el paquete |
| `nix develop` | Entra al entorno de desarrollo del flake/repo |
| `nix run nixpkgs#<pkg>` | Ejecuta una app sin instalarla |
| `nix store gc` | Limpia versiones viejas del store |
| `nix flake update` | Actualiza las entradas del `flake.lock` |

## Estructura del repo

```
flake.nix                 # entradas y puntos de salida de la flake
home/                     # config de usuario (base, fish, helix, tmux, etc.)
modules/
  home/default.nix        # expone homeConfigurations.mainnix (standalone)
  host/                   # configs completas de NixOS
  features/               # módulos NixOS reutilizables
modules/parts.nix         # sistemas soportados (x86_64-linux, etc.)
```