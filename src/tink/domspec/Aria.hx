package tink.domspec;

typedef Aria = {
  @:optional var label(default, never):String;
  @:optional var labelledby(default, never):String;
  @:optional var describedby(default, never):String;
  @:optional var autocomplete(default, never):String;
  @:optional var dropeffect(default, never):String;
  @:optional var hidden(default, never):Bool;
  @:optional var disabled(default, never):Bool;
  @:optional var checked(default, never):Bool;
  @:optional var haspopup(default, never):Bool;
  @:optional var grabbed(default, never):Bool;
}