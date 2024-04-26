In Flutter, initState() is called when we are inserting a stateful widget into the widget tree for the first time. 
We generally use it for one-time initialising of some tasks which need to be done when the widget is created for thr first time; like variable initialisation.

While, setState() method is used to notify the platform that the internal state of the object has changed and that the UI needs to be updated now.
For eg., when we want to change the count value upon the buttion click.

Attached an example code for a simple Counter app where I've applied both initState() and setState() according to their respective use.
