# Husbandry automata

!!! picture inline end
    ![Header](){ align=right }

The husbandry automata is turtle with Husbandry Mechanic Soul upgrade!

This upgrade allow everything, that [Weak automata](https://docs.srendi.de/turtles/weak_automata/) does and also provide ability interact with animals and even capture it.

## Overview

| Peripheral Name           | Interfaces with | Events | Introduced in |
| ------------------------- | --------------- | ------ | ------------- |
| husbandryMechanicSoul     | World           | No     | 0.7b          |

### Peripheral funtions

| Function             | Returns                  | Description                                                    |
| -------------------- | ------------------------ | -------------------------------------------------------------- |
| useOnAnimal()        | true, result or nil, err | Try use selected item on animal at the front turtle
| inspectAnimal()      | table or nil, err        | Inspect animal at the front of turtle
| searchAnimals()      | table or nil, err        | Returns list of animals around turtle
| captureAnimal()      | true or nil, err         | Capture animal at the front of turtle
| releaseAnimal()      | true or nil, err         | Release captured animal
| getCapturedAnimal()  | table or nil, err        | Returns information about captured animal

## Changelog/Trivia

0.7b
Added the husbandry automata
