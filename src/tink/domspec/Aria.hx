package tink.domspec;

import haxe.extern.EitherType;

typedef Aria = {
  @:html('aria-label') @:optional var ariaLabel(default, never):String;
  @:html('aria-labelledby') @:optional var ariaLabelledby(default, never):String;
  @:html('aria-describedby') @:optional var ariaDescribedby(default, never):String;
  @:html('aria-autocomplete') @:optional var ariaAutocomplete(default, never):String;
  @:html('aria-dropeffect') @:optional var ariaDropEffect(default, never):String;
  @:html('aria-hidden') @:optional var ariaHidden(default, never):Bool;
  @:html('aria-disabled') @:optional var ariaDisabled(default, never):Bool;
  @:html('aria-expanded') @:optional var ariaExpanded(default, never):Bool;
  @:html('aria-checked') @:optional var ariaChecked(default, never):Bool;
  @:html('aria-haspopup') @:optional var ariaHasPopup(default, never):Bool;
  @:html('aria-grabbed') @:optional var ariaGrabbed(default, never):Bool;
  @:html('aria-live') @:optional var ariaLive(default, never):String;
  @:html('aria-pressed') @:optional var ariaPressed(default, never):EitherType<Bool, String>;
  @:html('aria-valuenow') @:optional var ariaValuenow(default, never):Float;
  @:html('aria-valuemin') @:optional var ariaValuemin(default, never):Float;
  @:html('aria-valuemax') @:optional var ariaValuemax(default, never):Float;
  @:html('aria-valuetext') @:optional var ariaValuetext(default, never):String;
}
