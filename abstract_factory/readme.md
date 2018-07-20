## Objective Abstract Factory Pattern
- Provide a new layer of encapsulation for Factory Method that return a common interface for all factories
- Group common factories into a *super Factory* (also called a factory of factories)

## Requirements
- We must retrieve a Vehicle object using a factory returned by the abstract factory
- The vehicle must be a concrete implementation of a Motorbike or a Car that implements both interfaces (Vehicle and Car or Vehicle and Motorbike)
