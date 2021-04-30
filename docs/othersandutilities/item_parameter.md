#Item parameters of the ME/RS Bridge

The RS and ME Bridge uses the same parameter for the item.
It uses informations to see, what item the user want.
Example of a dirt block with the size of 85: `{name="minecraft:dirt", count=85}`

The RS and ME Bridge also can use fingerprints to exactly filter items.
Every item has is own fingerpint.

You **need** to use the name parameter **or** the fingerprint parameter. If you use both, it will not break anyhint but the mod will use the fingerprint parameter.
But the count parameter will always work.

We have 3 parameters to filter the nbt values(`tag`, `nbt`, `json`). You see each of thees bellow.

##Possible informations.

| Parameter | Information | Example |
|-----------|-------------|---------|
| name | Thisn't exactly the name, it is the registry name like `advancedperipherals:computer_tool` | `{name="advancedperipherals:computer_tool"}` |
| count | This is the count of the item which you want to get | `{name="advancedperipherals:computer_tool", count=48}` |
| nbt | The nbt value as MD5 hash, you can get the MD5 hash via the `/advancedperipherals getHashItem` command | `{name="minecraft:enchanted_book", count=38, nbt="ae70053c97f877de546b0248b9ddf525"}` |
| json | This is the nbt value as json format. You can find this format everywhere. You can get the format with `bridge.getItem(`EXAMPLE_PARAMETER`).nbt.` Every function which will return informations about items, will return the nbt value as **json** and not as MD5 Hash. Json needs to be a table, not a string! | `{name="minecraft:book", count=38, json={pages:['{"text":"Advanced Peripherals book example"}'],title:CoolBook,author:Srendi}}` |
| tag | This is the nbt value as binary. But i do not recommend this. | `No example` |
| fingerprint | This is the fingerprint of a item which you can find in every function which will return informations about items. If you use fingerprint, name and nbt will be ignored. | `{fingerprint="501761a712d45cdcdb2f7793dc0339e5"}` |
