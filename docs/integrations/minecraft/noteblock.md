---
comments: true
---

# Note Block

!!! picture inline end
    ![!Image of the Noteblock block](../img/previews/noteblock.png){ align=right }

A [Note Block](https://minecraft.fandom.com/wiki/Note_Block) is a musical block that emits sounds when punched or powered with redstone.

<p class="picture-spacing" style="--ps:7.3rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| noteBlock       | Note Block      | No         | 0.7.4r        |

</center>

---

## Functions

### playNote
```
playNote() -> void
```
Plays the Note Block's current note sound.

---

### getNote
```
getNote() -> number
```
Returns the index for the Note Block's current note. A number from 0 to 24.

---

### changeNoteBy
```
changeNoteBy(note: number) -> number
```
Changes the Note Block's note to the given `note`. `note` must be a number from 0 to 24.  
Returns the `note` if successful or -1 if not successful.

---

### changeNote
```
changeNote() -> number
```
Increments the Note Block's note to the next available note.  
Returns the new note if successful or -1 if not successful.

---

## Changelog/Trivia

**0.7.4r**  
Added the Note Block integration

**0.6b**  
Added integration for Minecraft
