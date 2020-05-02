package tink.domspec;

typedef EventsStructure<WheelEvent, ClipboardEvent, Event, MouseEvent, DragEvent, KeyboardEvent, PointerEvent, TouchEvent, ErrorEvent> = {
  @:optional var onwheel:WheelEvent;

  @:optional var oncopy:ClipboardEvent;
  @:optional var oncut:ClipboardEvent;
  @:optional var onpaste:ClipboardEvent;

  @:optional var onabort:Event;
  @:optional var onblur:Event;
  @:optional var onfocus:Event;

  @:optional var oncanplay:Event;
  @:optional var oncanplaythrough:Event;
  @:optional var onchange:Event;

  @:optional var onclick:MouseEvent;
  @:optional var oncontextmenu:MouseEvent;
  @:optional var ondblclick:MouseEvent;

  @:optional var ondrag:DragEvent;
  @:optional var ondragend:DragEvent;
  @:optional var ondragenter:DragEvent;
  @:optional var ondragleave:DragEvent;
  @:optional var ondragover:DragEvent;
  @:optional var ondragstart:DragEvent;
  @:optional var ondrop:DragEvent;

  @:optional var ondurationchange:Event;
  @:optional var onemptied:Event;
  @:optional var onended:Event;
  @:optional var oninput:Event;
  @:optional var oninvalid:Event;

  @:optional var oncompositionstart:Event;
  @:optional var oncompositionupdate:Event;
  @:optional var oncompositionend:Event;

  @:optional var onkeydown:KeyboardEvent;
  @:optional var onkeypress:KeyboardEvent;
  @:optional var onkeyup:KeyboardEvent;

  @:optional var onload:Event;
  @:optional var onloadeddata:Event;
  @:optional var onloadedmetadata:Event;
  @:optional var onloadstart:Event;

  @:optional var onmousedown:MouseEvent;
  @:optional var onmouseenter:MouseEvent;
  @:optional var onmouseleave:MouseEvent;
  @:optional var onmousemove:MouseEvent;
  @:optional var onmouseout:MouseEvent;
  @:optional var onmouseover:MouseEvent;
  @:optional var onmouseup:MouseEvent;

  @:optional var onpause:Event;
  @:optional var onplay:Event;
  @:optional var onplaying:Event;
  @:optional var onprogress:Event;
  @:optional var onratechange:Event;
  @:optional var onreset:Event;
  @:optional var onresize:Event;
  @:optional var onscroll:Event;
  @:optional var onseeked:Event;
  @:optional var onseeking:Event;
  @:optional var onselect:Event;
  @:optional var onshow:Event;
  @:optional var onstalled:Event;
  @:optional var onsubmit:Event;
  @:optional var onsuspend:Event;
  @:optional var ontimeupdate:Event;
  @:optional var onvolumechange:Event;
  @:optional var onwaiting:Event;

  @:optional var onpointercancel:PointerEvent;
  @:optional var onpointerdown:PointerEvent;
  @:optional var onpointerup:PointerEvent;
  @:optional var onpointermove:PointerEvent;
  @:optional var onpointerout:PointerEvent;
  @:optional var onpointerover:PointerEvent;
  @:optional var onpointerenter:PointerEvent;
  @:optional var onpointerleave:PointerEvent;

  @:optional var ongotpointercapture:Event;
  @:optional var onlostpointercapture:Event;
  @:optional var onfullscreenchange:Event;
  @:optional var onfullscreenerror:Event;
  @:optional var onpointerlockchange:Event;
  @:optional var onpointerlockerror:Event;

  @:optional var onerror:ErrorEvent;

  @:optional var ontouchstart:TouchEvent;
  @:optional var ontouchend:TouchEvent;
  @:optional var ontouchmove:TouchEvent;
  @:optional var ontouchcancel:TouchEvent;
}