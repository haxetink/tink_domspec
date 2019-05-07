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

class TagInfo {
  public var kind(default, null):TagKind;
  public var attr(default, null):ComplexType;
  public var pos(default, null):Position;
  public var domCt(default, null):ComplexType;
  public var dom(get, null):Type;
    function get_dom() 
      return switch dom {
        case null:
          dom = (macro @:pos(pos) (null:$domCt)).typeof().sure();    
        case v: v;
      }
  public function new(args) {
    this.kind = args.kind;
    this.attr = args.attr;
    this.pos = args.pos;
    this.domCt = args.domCt;
  }
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
            case TType(_.get() => { module: 'tink.domspec.Attributes', name: name}, params): 
              var typeId = 
                switch f.meta.extract(':element') {
                  case []:
                    'js.html.' + (switch name.split('Attr') {
                      case ['Global', '']: '';
                      case [name, '']: name;
                      default: throw 'assert';
                    }) + 'Element';
                  case [{params: [path]}]:
                    path.toString();
                  case _:
                    f.pos.error('Only support single @:element meta with a single parameter');
                }
              
              tags[f.name] = new TagInfo({
                kind: kind,
                attr: 'tink.domspec.Attributes.$name'.asComplexType(params.map(function(type) return TPType(type.toComplex()))),
                pos: f.pos,
                domCt: typeId.asComplexType(),
              });
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
