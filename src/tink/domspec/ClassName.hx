package tink.domspec;

#if macro
import haxe.macro.Type;
import haxe.macro.*;
using haxe.macro.Tools;
using tink.MacroApi;
#end
using StringTools;

@:transitive
abstract ClassName(String) to String {

  inline function new(s:String) this = s;

  public function add(that:ClassName)
    return new ClassName(switch [this, (that:String)] {
      case [null, v] | [v, null]: v;
      case [a, b]: '$a $b';
    });

  public function when(cond:Bool):ClassName
    return new ClassName(if(cond) this else '');

  public function addWhen(that:ClassName, cond:Bool):ClassName
    return add(that.when(cond)); 

  @:from static function ofMap(parts:Map<String, Bool>)
    return new ClassName(ofArray([for (c in parts.keys()) if (parts[c]) ofString(c)]));

  @:from static function ofArray(parts:Array<String>)
    return new ClassName(parts.map(ofString).join(' '));

  @:from static function ofDynamicAccess(parts:haxe.DynamicAccess<Bool>)
    return new ClassName(ofArray([for (c in parts.keys()) if (parts[c]) ofString(c)]));

  #if macro @:from #end static function ofString(s:String):ClassName
    return if (s == null) null else new ClassName(s.trim());

  public function applyVia<V, O:{ @:optional var className(default, never):V; }>(o:O, via:ClassName->V->V) {
    var ret:O =
      #if js
        js.lib.Object.create(o)
      #else
        Reflect.copy(o)
      #end
    ;

    (cast ret).className = via(cast this, o.className);
    return ret;
  }

  macro public function applyTo(ethis, e:Expr) {

    function generate(e, args, ret) {
      if (false) TFun(args, ret);
      var callArgs = [];
      var f:Expr.Function = {
        args: [],
        ret: null,
        expr: macro return $e($a{callArgs}),
      }
      var found = false;

      for(a in args) {
        f.args.push({
          type: null,
          name: a.name,
          opt: a.opt
        });

        var arg = macro $i{a.name};
        callArgs.push(switch a.t.reduce() {
          case TAnonymous([for (f in _.get().fields) if (f.name == 'className') f] => [f]):

            found = true;

            var via = switch f.type.reduce() {
              case TAbstract(_.get() => { module: 'tink.hxx.Expression' }, _):
                macro @:pos(e.pos) (c, a) -> () -> c.add(a());
              default:
                macro @:pos(e.pos) (c, a) -> c.add(a);
            }

            macro @:pos(e.pos) _tink_tmp.applyVia($arg, $via);
          default: macro $arg;
        });
      }

      if (!found)
        e.reject('no argument found that has a className property');

      return macro {
        var _tink_tmp = $ethis;
        ${f.asExpr()};
      }
    }

    return switch Context.typeof(e) {
      case _.reduce() => TFun(args, ret):
        generate(e, args, ret);
      case TAnonymous(_.get() => { fields: [for (f in _) if (f.name == 'fromHxx') f] => [f] }):
        switch f.type.reduce() {
          case TFun(args, ret):
            generate(macro @:pos(e.pos) $e.fromHxx, args, ret);
          default:
            f.pos.error('foo');
        };
      case t:
        e.reject('${t.toString()} is not a function');
    }
  }

  @:from macro static function ofExpr(e:Expr)
    return switch e {
      case macro $v{(s:String)}:
        macro (cast $v{ofString(s)}:tink.domspec.ClassName);
      default:
        var t = Context.typeExpr(e);
        if (t.t.unifiesWith(Context.getType('String')))
          macro @:privateAccess tink.domspec.ClassName.ofString($e);
        else
          e.pos.error('${t.t.toString()} should be tink.domspec.ClassName');
    }
}
