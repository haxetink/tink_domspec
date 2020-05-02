package tink.domspec;

import js.html.*;
using tink.CoreApi;

typedef Events<Target:DOMElement> = EventsStructure<
  Callback<EventFrom<Target, WheelEvent>>,
  Callback<EventFrom<Target, ClipboardEvent>>,
  Callback<EventFrom<Target, Event>>,
  Callback<EventFrom<Target, MouseEvent>>,
  Callback<EventFrom<Target, DragEvent>>,
  Callback<EventFrom<Target, KeyboardEvent>>,
  Callback<EventFrom<Target, PointerEvent>>,
  Callback<EventFrom<Target, TouchEvent>>,
  Callback<EventFrom<Target, ErrorEvent>>
>;