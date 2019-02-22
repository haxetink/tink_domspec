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
  var pos(default, never):Position;
}

class Macro {
  static public var tags(get, null):Map<String, TagInfo>;//TODO: make this readonly
  static function get_tags() {
    if (tags == null) {
      tags = new Map();
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

              tags[f.name] = {
                kind: kind,
                attr: 'tink.domspec.Attributes.$name'.asComplexType(),
                pos: f.pos,
                dom: {
                  var ct = html.asComplexType();
                  (macro @:pos(f.pos) (null:$ct)).typeof().sure();
                }
              }
            default: throw 'assert';
          }
        }
      }
    }
    return tags;
  }
  
  static function processStyle(e:Expr):Expr 
    return switch e {
      case macro @style $e: processStyle(e);
      case { expr: EObjectDecl(_) }: e;
      default: 
        switch e.typeof().sure() {
          case TInst(_.get() => { pack: [], name: 'String' }, _): 
            macro @:pos(e.pos) tink.domspec.Style.CSSParser.parseString($e);//TODO: try some compile time parsing
          default: e;
        }
    }
}
#else
class Macro {
  static macro public function processStyle(e);
}
#end
