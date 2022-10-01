#Beacon

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/10/minecraft_note_block.png){ align=right }
    Mod: Minecraft <br><br/>
    Block: Noteblock
A [note block](https://minecraft.fandom.com/wiki/Note_Block) is a musical block that emits sounds when powered with redstone.

<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| playNote() |  | Plays the sound of the current note |
| getNote() | int | Returns the current note. A value between 0 and 24 |
| changeNoteBy(int note) | int | Changes the note to the given note. A value between 0 and 24. Returns the note if successful |
| changeNote() | int | Changes the note to the next possible(Like when you would click on the noteblock). Returns the note if successful, -1 if not successful |

##Changelog/Trivia

0.7.4r
Added the noteblock integration

0.6b
Added integration for Minecraft
