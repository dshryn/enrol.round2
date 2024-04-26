In Flutter, initState() is called when we are inserting a stateful widget into the widget tree for the first time. 
We generally use it for one-time initialising of some tasks which need to be done when the widget is created for thr first time; like variable initialisation.

When we use setState(), it tells the app that something inside the widget has changed and it needs to refresh the screen. So, if we want to update the count when we tap a button, we'll use setState().

Attached an example code for a simple Counter app where I've applied both initState() and setState() according to their respective use.
