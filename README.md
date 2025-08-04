# warmachine_list_validator
## Project Goals
During the 3rd edition of Warmachine there was a very helpful website called conflict chamber which allowed users to create lists online, add them to tournaments, and see various usage statistics for events. Unfortunately the project was never updated for the 4th edition of the game. The goal of this project will be to create a similar service that is fully open source so should the main project owner need to step away the community can simply fork the project and continue to update it. I foresee this project having 4 major releases.

### Version 0:
* Account creation
* Data model for lists

### Version 1:
* List creation and validation

### Version 2:
* Solo event creation and the ability for users to register and submit lists

### Version 3:
* Team event creation

### Version 4:
* Statistics, usage rates, etc

### Not currently planned or in scope:
* Tournament tracking/parings. Longshanks already handles this very well and while tying win rates into model usage statistics would be helpful there is little need for it since longshanks can already do that on a per leader model basis.

## Technologies:
For the moment the plan is to use Ruby on Rails and mysql.

## Open questions:
* Data retention - Some form of data retention rules will need to be set.
* SFG Restrictions - I intend to speak with SFG to see if there are any restrictions that would like set for them to accept the project. For example I do not intend this service to be a place to store lists when one of the reasons to subscribe to the warmachine app is to allow the saving of more than 6 lists on your device.
