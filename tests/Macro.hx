#if macro
import tink.domspec.Macro.tags;
using tink.MacroApi;
using haxe.macro.PositionTools;
#end

class Macro {
  static public macro function build() {
    var exprs = [];
    
    for(tag in tags.keys()) {
      var info = tags[tag];
      
      var isSvg = info.domCt.toString().indexOf('.svg.') != -1;
      if(isSvg) continue; // TODO: find a way to check svg elements
      
      switch info.attr.toType() {
        case Success(_.reduce() => TAnonymous(_.get() => {fields: fields})):
          
          var checks = 
            [for(field in fields) {
              var pos = field.pos.toLocation();
              // if(!field.meta.has(':global')) 
                macro if(!js.Syntax.code('({0} in {1})', $v{field.name}, element)) js.Browser.console.log($v{pos.file.toString()} + ':' + $v{pos.range.start.line} + ': Warning - Potentially incorrect field: ' + $v{tag} + '#' + $v{field.name});
            }];
        
          exprs.push(macro {
            var element = js.Browser.document.createElement($v{tag});
            $b{checks}
          });
        case _:
          throw 'assert';
      }
      
      
    }
    return macro $b{exprs};
  }
}