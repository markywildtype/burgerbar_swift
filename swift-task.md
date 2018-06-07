## User Story

*"As a User I want to be able to select a Product and select any required and optional Modifiers."*

#### Example:

User can select any Product. Some Products contain additional Modifiers that are Products itself. Those Modifiers can have a different price then when being a Product on its own i.e. Chips on its own can cost £2.00 whereas when purchased as a part of a meal with Burger costs £1.00.

Some Products may contain few options where each option may contain required or optional set of Modifiers i.e. when selecting Burger, User needs to select either Chips, Potato wedges or Sweet Potato Fries. Then he needs to be able to optionally select none or as many as needed: Ketchup, Mayonnaise or Vinegar. At the end he needs to select one and only one: water, soda or juice drink. User should be able to select single Products on its own as well as set meals constructed from other products.

```
* Burger
  * Option 1 (Select minimum 1 and maximum of 1)
    * Chips
    * Potato wedges
    * Sweet Potato Fries
  * Option 2 (Select minimum 0 and maximum of Unlimited)
    * Ketchup
    * Mayonnaise
    * Vinegar
  * Option 3 (Select minimum 1 and maximum of 1)
    * Water
    * Soda
    * Juice
```
    
Each product must have a price and a unique identifier.

#### Task:

Design and implement an iOS framework that could handle scenario presented in example above. Keep in mind that your framework should be able to handle Products that are as simple as single portion of Fries and as complex as the given example of a set meal.

#### Rules:

* You are not allowed to use any external frameworks - Foundation only.

* Framework should be written in the latest Swift version.

* Provide Unit Tests to prove that your model can handle given problem.

* Use git in order to provide history of your work on a framework.

* Code should be written in a way that could be easily used in a team environment.
