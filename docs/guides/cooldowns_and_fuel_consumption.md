# Turtles: Cooldowns and Fuel consumption

For information on the different types of cooldowns and operations that a turtle may have see the Automatas:

- [Weak Automata](../turtles/metaphysics/weak_automata.md)
- [Husbandry Automata](../turtles/metaphysics/husbandry_automata.md)
- [End Automata](../turtles/metaphysics/end_automata.md)
- [Overpowered Automata](../turtles/metaphysics/overpowered_automata.md)

---

All world changing operations will consume turtle fuel (unless it is disabled in the CC:Tweaked configuration). Most of these operations have cooldowns, so you should consider this in your code. Hopefully, every active cooldown can be retrieved via peripheral methods.

## Consumption vs Cooldowns

Higher fuel consumption rate will reduce operation cooldowns, but obviously will increase the consumption of fuel. For example, if a click operation required 1 fuel point to perform and has a 5 second cooldown; with a fuel consumption rate of 2 you can perform a click operation every 2.5 seconds, but at the cost of 2 fuel points.

## Maximum fuel consumption

However, fuel consumption rate is not so simple! Every mechanic soul has a max fuel consumption limitation, that can be retrieved via the [`getConfiguration()`](../turtles/metaphysics/weak_automata.md#getconfiguration) method.

## Fuel point usage

Also, the number of required fuel points increases faster than fuel consumption for every reduction in cooldowns. Fuel consumption 3 requires 4 fuel points, fuel consumption 4 requires 6 fuel points, etc.

<br>

$$
\operatorname{cost} C = \operatorname{consumption} f + \max\{0, f - 2\}
$$

<br>
<br>