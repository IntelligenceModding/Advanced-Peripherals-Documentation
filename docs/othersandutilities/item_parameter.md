#Item parameters of the ME/RS Bridge

The Rs and Me Bridge both use the same parameters for the item.
It requires information on the item (as a table) to provide the user what he wants.
Example of a dirt block with a count of 85: `{name="minecraft:dirt", count=85}`

The Rs and Me Bridge can also use fingerprints to filter items exactly.
Every item has is own fingerpint.

You **need** to use the name parameter **or** the fingerprint parameter. If you use both, it will not break anything but the mod will use the fingerprint parameter.
The count parameter will always work.

We have 3 parameters to filter the NBT values(`tag`, `nbt`, `json`). You can see more on them below.

##Possible informations.

| Parameter | Information | Example |
|-----------|-------------|---------|
| name | The name of the item (Note: this isn't the display name, it is the registry name like `advancedperipherals:computer_tool`). | `{name="advancedperipherals:computer_tool"}` |
| count | The count of the item you want to get. | `{name="advancedperipherals:computer_tool", count=48}` |
| nbt | The NBT value as MD5 hash. You can get the MD5 hash via the `/advancedperipherals getHashItem` command. | `{name="minecraft:enchanted_book", count=38, nbt="ae70053c97f877de546b0248b9ddf525"}` |
| json | This is the NBT value as JSON format. You can find this format everywhere. You can get the format with `bridge.getItem(`EXAMPLE_PARAMETER`).nbt.` All functions that return information about items will return the NBT value as **JSON** and not as MD5 Hash. JSON needs to be a table, not a string! | `{name="minecraft:book", count=38, json={pages:['{"text":"Advanced Peripherals book example"}'],title:CoolBook,author:Srendi}}` |
| fingerprint | This is the fingerprint of an item which you can find in every function that return information about items. If you use fingerprint, name and NBT will be ignored. | `{fingerprint="501761a712d45cdcdb2f7793dc0339e5"}` |
