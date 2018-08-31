package tink.domspec;

#if macro
import haxe.macro.Expr;
import haxe.macro.Type;
using tink.MacroApi;

@:enum abstract TagKind(String) to String {
  var VOID = 'void';
  var NORMAL = 'normal';
  var OPAQUE = 'opaque';
}

typedef TagInfo = {
  var kind(default, never):TagKind;
  var attr(default, never):ComplexType;
  var dom(default, never):Type;
}

class Macro {
  static public var tags(default, null):Map<String, TagInfo> = {//TODO: make this readonly
    var ret = new Map();
    for (group in haxe.macro.Context.getType('tink.domspec.Tags').getFields().sure()) {
      var kind:TagKind = cast group.name;
      for (f in group.type.getFields().sure()) {
        switch f.type {
          case TType(_.get() => { module: 'tink.domspec.Attributes', name: name }, _): 
            var html = 'js.html.' + (switch name.split('Attr') {
              case ['Global', '']: '';
              case [name, '']: name;
              default: throw 'assert';
            }) + 'Element';

            ret[f.name] = {
              kind: kind,
              attr: 'tink.domspec.Attributes.$name'.asComplexType(),
              dom: {
                var ct = html.asComplexType();
                (macro @:pos(f.pos) (null:$ct)).typeof().sure();
              }
            }
          default: throw 'assert';
        }
      }
    }
    ret;
  }
}
#end