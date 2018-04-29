package tink.domspec;

#if js
import js.html.*;

@:forward
abstract EventFrom<Elt:Element, Evt:Event>(Evt) {

  public var currentTarget(get, never):Elt;
    inline function get_currentTarget():Elt
      return cast this.currentTarget;

  public var target(get, never):Element;
    inline function get_target():Element
      return cast this.target;

  public var element(get, never):Elt;
    inline function get_element():Elt
      return currentTarget;
}
#else
@:require(js)
extern class EventFrom<Elt, Evt> {}
#end