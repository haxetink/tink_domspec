#if macro
using tink.MacroApi;
#end

class Macro {
  static public macro function build() {
    for (kind in haxe.macro.Context.getType('tink.domspec.Tags').getFields().sure())
      for (f in kind.type.getFields().sure()) {
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
    return macro null;
  }
}