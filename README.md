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

## Simplified Flow
### 1) Event Triggers Logic
- The user interacts with the UI (e.g., presses a button).
- This interaction triggers an event, like CounterIncrementEvent.

### 2) BLoC Processes the Event
- The event is sent to the CounterBloc.
- The BLoC processes the event by running the associated method (e.g., counterIncrementEvent).
- The method updates the internal state or value (e.g., increases the counter).

### 3) State is Emitted
- After processing, the BLoC emits a new state, like CounterIncrementState, with the updated counter value.
- The UI listens to this state and updates accordingly (e.g., displays the new counter value).

## Code File Structure

- ### BLoC File (counter_bloc.dart):

  - Contains the CounterBloc class where the main logic resides.
  - Handles events and emits states.

- ### Event File (counter_event.dart or part of counter_bloc.dart):

  - Contains all events (CounterEvent and its subclasses).
  - Events define what actions can be performed on the data managed by the BLoC.

- ### State File (counter_state.dart or part of counter_bloc.dart):

  - Contains all states (CounterState and its subclasses).
  - States define the different possible conditions that the UI can be in, based on the data processed by the BLoC.

## Summary

- **Event** = What happens (e.g., button press).
- **BLoC** = Where the logic lives (e.g., incrementing the counter).
- **State** = What the UI should show (e.g., updated counter value).

By keeping these distinctions in mind, you'll know what to write in each file: define the actions in the event file, handle those actions in the BLoC file, and define the possible UI conditions in the state file.


## BlocBuilder

- **Purpose:** Used when the UI needs to rebuild based on state changes.

- **Example:** Updating a counter value in a text widget when a button is pressed.

## BlocListener

- **Purpose:** Used to perform actions without rebuilding the UI, such as showing a dialog, bottom sheet, or triggering navigation.

- **Example:** Displaying a snackbar or an alert dialog in response to an event.

## BlocConsumer

- **Purpose:** Combines the functionalities of both BLoCBuilder and BLoCListener. It can both rebuild the UI and trigger actions based on state changes.

- **Example:** Handling navigation and UI updates simultaneously when a state changes.
