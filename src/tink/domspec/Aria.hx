package tink.domspec;

typedef Aria = {
  @:html('aria-label') @:optional var ariaLabel(default, never):String;
  @:html('aria-labeledby') @:optional var ariaLabelledby(default, never):String;
  @:html('aria-describedby') @:optional var ariaDescribedby(default, never):String;
  @:html('aria-autocomplete') @:optional var ariaAutocomplete(default, never):String;
  @:html('aria-dropeffect') @:optional var ariaDropEffect(default, never):String;
  @:html('aria-hidden') @:optional var ariaHidden(default, never):Bool;
  @:html('aria-disabled') @:optional var ariaDisabled(default, never):Bool;
  @:html('aria-checked') @:optional var ariaChecked(default, never):Bool;
  @:html('aria-haspopup') @:optional var ariaHasPopup(default, never):Bool;
  @:html('aria-grabbed') @:optional var ariaGrabbed(default, never):Bool;
}