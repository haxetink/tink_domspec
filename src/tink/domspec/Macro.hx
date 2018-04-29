package tink.domspec;

#if macro
using tink.MacroApi;

@:enum abstract TagKind(String) to String {
  var VOID = 'void';
  var NORMAL = 'normal';
  var OPAQUE = 'opaque';
}

class Macro {
  static public var tags(default, null) = {
    var ret = new Map();
    for (kind in haxe.macro.Context.getType('tink.domspec.Tags').getFields().sure())
      for (f in kind.type.getFields().sure()) {
        var kind:TagKind = cast f.name;
        switch f.type {
          case TType(_.get() => { module: 'tink.domspec.Attributes', name: name }, _): 
            var html = 'js.html.' + (switch name.split('Attr') {
              case ['Global', '']: '';
              case [name, '']: name;
              default: throw 'assert';
            }) + 'Element';
            var ct = html.asComplexType();
            (macro @:pos(f.pos) (null:$ct)).typeof().sure();
          default: throw 'assert';
        }
      }
  }
  // static public function types() {

  // }
}
#end