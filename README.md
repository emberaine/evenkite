<p align="center"><img width="1000" height="auto" scale="5" alt="evenkite_logo" src="https://github.com/user-attachments/assets/80da63ea-6599-4026-9004-d48be32fad0c" /></p>
  <p align="center">An ultra-lightweight, atomic Linux distribution based on Fedora for the modern developer.</p>
  <p align="center"><a href="https://github.com/emberaine/evenkite/actions/workflows/build.yml"><img src="https://github.com/emberaine/evenkite/actions/workflows/build.yml/badge.svg" alt="bluebuild build badge"/></a></p>

---

> [!WARNING]
> Evenkite is actively being developed, and a lot of its features haven't been implemented yet.
> 
> You probably shouldn't use it yet, unless you dare!

## Philosophy

Bazzite is made for those who want everything they'll ever need. Every game launcher, every dev tool, every terminal app, everything.

Silverblue is made to be an atomic version of their Workstation desktop. Super barren, without codecs, drivers, basically most of the stuff you'd need to get it running nice.

Evenkite is for those in between. It comes with codecs and drivers, and uses a very small, initial set of apps. You get to choose what you put on top of that.

No opinionated themes or icons, just a nice, clean set of default apps, wallpapers, and the things you need to make it home.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/emberaine/evenkite:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/emberaine/evenkite:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

You can generate an offline ISO with the instructions available [here](https://blue-build.org/how-to/generate-iso/#_top). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/emberaine/evenkite
```
