# Tinkerbell DOM Spec

This library contains a specification of the DOM elements, with their attributes and events. It has no use on its own, rather it is meant as a support library for [coconut](https://mvcoconut.github.io/), [tink_html](https://github.com/haxetink/tink_html), [haxe-react](https://github.com/massiveinteractive/haxe-react) and any other library that may require dealing with the DOM.

The spec found here does *not* represent an alternative for the `js.html` externs (but rather a complement). In fact it does not depend on js or the DOM at all, since it should be usable in situations like server side validation of HTML.

Because the spec is handwritten, it is not comprehensive. Properties that are deprecated or highly experimental are left out intentionally. However, pull requests to add missing properties you encounter a real world need for are highly welcome.

The main entry point for retrieving the type information at compile time is `tink.domspec.Macro.tags`.