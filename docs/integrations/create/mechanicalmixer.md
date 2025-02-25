---
comments: true
---

# Mechanical Mixer

!!! success "Available in versions 1.18+"

!!! picture inline end
    ![!Image of the Mechanical Mixer block](../img/previews/mechanical_mixer.png){ align=right }

A Mechanical Mixer is used in combination with a Basin to process many shapeless recipes with items and fluid.

!!! warning "Requirement"
    Requires the [Create](https://www.curseforge.com/minecraft/mc-mods/create) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with        | Has events | Introduced in |
| --------------- | ---------------------- | ---------- | ------------- |
| mechanicalMixer | Mechanical Mixer block | No         | 0.7.16        |

</center>

---

## Functions

### isRunning
```
isRunning() -> boolean
```
Returns true if the mixer is currently running.

---

### hasBasin
```
hasBasin() -> boolean
```
Returns true if the mixer has a basin below it.

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
