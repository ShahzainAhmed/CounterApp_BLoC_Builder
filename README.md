# CounterApp using BLoC Builder 

## 1) BLoC (Business Logic Component)

The BLoC is a class that contains the business logic of your application. It takes events as input and produces states as output based on the logic you define.

In our case, CounterBloc is responsible for managing the counter's value. When an event is received (like CounterIncrementEvent), it updates the value and emits a new state with the updated value.

## 2) Event

An event represents an action or occurrence in your app that the BLoC should respond to. It can be triggered by user interaction, such as a button press.

CounterEvent is the base class for all events related to the counter. 

CounterIncrementEvent is a specific event that indicates the counter should be incremented.

## 3) State

A state represents the current condition or data of your application that can be rendered by the UI. Whenever the BLoC processes an event and changes something, it emits a new state.

CounterState is the base class for all states related to the counter.

CounterInitial represents the initial state when the counter starts (e.g., 0).

CounterIncrementState represents the state after the counter has been incremented, holding the updated counter value.

## Simplified Flow:
### 1) Event Triggers Logic:
- The user interacts with the UI (e.g., presses a button).
- This interaction triggers an event, like CounterIncrementEvent.

### 2) BLoC Processes the Event:
- The event is sent to the CounterBloc.
- The BLoC processes the event by running the associated method (e.g., counterIncrementEvent).
- The method updates the internal state or value (e.g., increases the counter).

### 3) State is Emitted:
- After processing, the BLoC emits a new state, like CounterIncrementState, with the updated counter value.
- The UI listens to this state and updates accordingly (e.g., displays the new counter value).

There are 2 ways how we change the UI, either we rebuild the complete UI, or either we just show or invoke(calling) a piece of UI, we call a bottomsheet, we call a alert dialog box, scaffoldmessenger, these we invoke(call), and for these components, we use listener, here we are not rebuilding the UI, the app is going to remain as it is, on top of our UI/app, so if i am calling a bottomsheet, it is going to come on top of this page, your UI is not going to change, same goes for alert dialog box, it will come over a piece of UI, the whole page is not going to get rerendered or rebuilding the whole widget or app, for these all we need listener, in listener we dont rebuild things. 

for building:
see the plus icon button on homescreen, if i press it, it is going to increment the counter, this means it is rebuilding, from 1 to 2, 2 to 3, and goes on as I press the button, it doesn't mean that it is changing on top of my UI, no, the widget itself is changing/rebuilding, the value of the textwidget is changing, that means text widget is rebuilding/rerendering, here we need a BLoCBuilder

BlocConsumer (for both listening and building):

BlocListener: is used whenever we have to invoke or call a function, we dont rebuild anything, so no need to use BlocBuilder, navigations are also part of BlocListener

