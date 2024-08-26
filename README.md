# CounterApp using BLoC Builder 


26th August 2024:

There are 2 ways how we change the UI, either we rebuild the complete UI, or either we just show or invoke(calling) a piece of UI, we call a bottomsheet, we call a alert dialog box, scaffoldmessenger, these we invoke(call), and for these components, we use listener, here we are not rebuilding the UI, the app is going to remain as it is, on top of our UI/app, so if i am calling a bottomsheet, it is going to come on top of this page, your UI is not going to change, same goes for alert dialog box, it will come over a piece of UI, the whole page is not going to get rerendered or rebuilding the whole widget or app, for these all we need listener, in listener we dont rebuild things. 

for building:
see the plus icon button on homescreen, if i press it, it is going to increment the counter, this means it is rebuilding, from 1 to 2, 2 to 3, and goes on as I press the button, it doesn't mean that it is changing on top of my UI, no, the widget itself is changing/rebuilding, the value of the textwidget is changing, that means text widget is rebuilding/rerendering, here we need a BLoCBuilder

BlocConsumer (for both listening and building):

BlocListener: is used whenever we have to invoke or call a function, we dont rebuild anything, so no need to use BlocBuilder, navigations are also part of BlocListener

