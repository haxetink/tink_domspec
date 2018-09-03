package tink.domspec;

#if js
import js.html.*;

@:forward
abstract EventFrom<Elt, Evt:Event>(Evt) {

  public var currentTarget(get, never):Elt;
    inline function get_currentTarget():Elt
      return cast this.currentTarget;

  public var target(get, never):Element;
    inline function get_target():Element
      return cast this.target;

  public var src(get, never):Elt;
    inline function get_src():Elt
      return currentTarget;
}
#else
@:require(js)
extern class EventFrom<Elt, Evt> {}
#end