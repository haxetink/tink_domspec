package tink.domspec;

import js.html.*;
using tink.CoreApi;

typedef Events<Target:DOMElement> = {
  @:optional var onwheel:Callback<EventFrom<Target, WheelEvent>>;
  
  @:optional var oncopy:Callback<EventFrom<Target, ClipboardEvent>>;
  @:optional var oncut:Callback<EventFrom<Target, ClipboardEvent>>;
  @:optional var onpaste:Callback<EventFrom<Target, ClipboardEvent>>;
  
  @:optional var onabort:Callback<EventFrom<Target, Event>>;
  @:optional var onblur:Callback<EventFrom<Target, Event>>;
  @:optional var onfocus:Callback<EventFrom<Target, Event>>;
  
  @:optional var oncanplay:Callback<EventFrom<Target, Event>>;
  @:optional var oncanplaythrough:Callback<EventFrom<Target, Event>>;
  @:optional var onchange:Callback<EventFrom<Target, Event>>;
  
  @:optional var onclick:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var oncontextmenu:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var ondblclick:Callback<EventFrom<Target, MouseEvent>>;
  
  @:optional var ondrag:Callback<EventFrom<Target, DragEvent>>;
  @:optional var ondragend:Callback<EventFrom<Target, DragEvent>>;
  @:optional var ondragenter:Callback<EventFrom<Target, DragEvent>>;
  @:optional var ondragleave:Callback<EventFrom<Target, DragEvent>>;
  @:optional var ondragover:Callback<EventFrom<Target, DragEvent>>;
  @:optional var ondragstart:Callback<EventFrom<Target, DragEvent>>;
  @:optional var ondrop:Callback<EventFrom<Target, DragEvent>>;
  
  @:optional var ondurationchange:Callback<EventFrom<Target, Event>>;
  @:optional var onemptied:Callback<EventFrom<Target, Event>>;
  @:optional var onended:Callback<EventFrom<Target, Event>>;
  @:optional var oninput:Callback<EventFrom<Target, Event>>;
  @:optional var oninvalid:Callback<EventFrom<Target, Event>>;
  
  @:optional var onkeydown:Callback<EventFrom<Target, KeyboardEvent>>;
  @:optional var onkeypress:Callback<EventFrom<Target, KeyboardEvent>>;
  @:optional var onkeyup:Callback<EventFrom<Target, KeyboardEvent>>;
  
  @:optional var onload:Callback<EventFrom<Target, Event>>;
  @:optional var onloadeddata:Callback<EventFrom<Target, Event>>;
  @:optional var onloadedmetadata:Callback<EventFrom<Target, Event>>;
  @:optional var onloadstart:Callback<EventFrom<Target, Event>>;
  
  @:optional var onmousedown:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var onmouseenter:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var onmouseleave:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var onmousemove:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var onmouseout:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var onmouseover:Callback<EventFrom<Target, MouseEvent>>;
  @:optional var onmouseup:Callback<EventFrom<Target, MouseEvent>>;
  
  @:optional var onpause:Callback<EventFrom<Target, Event>>;
  @:optional var onplay:Callback<EventFrom<Target, Event>>;
  @:optional var onplaying:Callback<EventFrom<Target, Event>>;
  @:optional var onprogress:Callback<EventFrom<Target, Event>>;
  @:optional var onratechange:Callback<EventFrom<Target, Event>>;
  @:optional var onreset:Callback<EventFrom<Target, Event>>;
  @:optional var onresize:Callback<EventFrom<Target, Event>>;
  @:optional var onscroll:Callback<EventFrom<Target, Event>>;
  @:optional var onseeked:Callback<EventFrom<Target, Event>>;
  @:optional var onseeking:Callback<EventFrom<Target, Event>>;
  @:optional var onselect:Callback<EventFrom<Target, Event>>;
  @:optional var onshow:Callback<EventFrom<Target, Event>>;
  @:optional var onstalled:Callback<EventFrom<Target, Event>>;
  @:optional var onsubmit:Callback<EventFrom<Target, Event>>;
  @:optional var onsuspend:Callback<EventFrom<Target, Event>>;
  @:optional var ontimeupdate:Callback<EventFrom<Target, Event>>;
  @:optional var onvolumechange:Callback<EventFrom<Target, Event>>;
  @:optional var onwaiting:Callback<EventFrom<Target, Event>>;
  
  @:optional var onpointercancel:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointerdown:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointerup:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointermove:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointerout:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointerover:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointerenter:Callback<EventFrom<Target, PointerEvent>>;
  @:optional var onpointerleave:Callback<EventFrom<Target, PointerEvent>>;
  
  @:optional var ongotpointercapture:Callback<EventFrom<Target, Event>>;
  @:optional var onlostpointercapture:Callback<EventFrom<Target, Event>>;
  @:optional var onfullscreenchange:Callback<EventFrom<Target, Event>>;
  @:optional var onfullscreenerror:Callback<EventFrom<Target, Event>>;
  @:optional var onpointerlockchange:Callback<EventFrom<Target, Event>>;
  @:optional var onpointerlockerror:Callback<EventFrom<Target, Event>>;
  
  @:optional var onerror:Callback<EventFrom<Target, ErrorEvent>>;
  
  @:optional var ontouchstart:Callback<EventFrom<Target, TouchEvent>>;
  @:optional var ontouchend:Callback<EventFrom<Target, TouchEvent>>;
  @:optional var ontouchmove:Callback<EventFrom<Target, TouchEvent>>;
  @:optional var ontouchcancel:Callback<EventFrom<Target, TouchEvent>>;
}