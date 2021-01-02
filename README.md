# Minland

Minland is an experiment in collaborative [worlding][1].

Basically, it's a [Minetest][2] server that is modded and maintained by multiple
actors without centralized coordination, or a specific end goal or any target
feature set in mind. To the extent that there is structure in the collaboration,
it is introduced as needed.

## Get hacking

For a minimal work setup, you will need to install:

- [Docker][3]
- The [Minetest][4] client

To build and run the Minland docker image:

```shell
./scripts/dev.sh
```

Then, you should be able to connect to the server in your Minetest client using
address `0.0.0.0` and port `3000`.

## Project structure

- `k8s` - Kubernetes resource definition files for Minland infrastructure
- `argo` - Argo application definitions that drive git-based k8s automation
- `minetest` - Static configuration for the Minetest server that powers Minland, including third-party mods
- `minland` - Umbrella directory for all Minland-specific source trees, including first-party mods and adjacent infrastructure
- `scripts` - Scripts to aid in building Minland

Minetest requires that loaded mods me enumerated in a world configuration
file. Currently, this file lives at `minetest/worlds/world/world.mt`. If
you create a mode (or add a third-party mod), you need to add a corresponding
entry in `world.mt`.

## Infrastructure

Currently, Minland uses the following software and infrastructure:

- [Minetest][2] for game server and client
- [Docker][3] for building container images
- [Kubernetes][4] for orchestrating cloud infrastructure
- [Argo CD][5] for continuous delivery
- [Google Cloud Platform][6] as infrastructure provider

[1]: https://newmaterialism.eu/almanac/w/worlding.html
[2]: https://www.minetest.net/
[3]: https://www.docker.com/
[4]: https://kubernetes.io/
[5]: https://argoproj.github.io/projects/argo-cd
[6]: https://cloud.google.com/
