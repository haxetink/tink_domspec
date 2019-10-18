package tink.domspec;

import tink.domspec.Style;
typedef GlobalAttr<Style> = {
  @:html('class') @:optional var className(default, never):ClassName;
  @:optional var id(default, never):String;
  @:optional var title(default, never):String;
  @:optional var lang(default, never):String;
  @:optional var dir(default, never):String;

  @:optional var hidden(default, never):Bool;
  @:optional var tabIndex(default, never):Int;
  @:optional var accessKey(default, never):String;
  @:optional var draggable(default, never):Bool;
  @:optional var spellcheck(default, never):Bool;
  @:optional var style(default, never):Style;
}

typedef DetailsAttr = {>GlobalAttr<Style>,
  @:optional var open(default, never):Bool;
}

typedef FieldSetAttr = {>GlobalAttr<Style>,
  @:optional var disabled(default, never):Bool;
  @:optional var name(default, never):String;
}

typedef ObjectAttr = {>GlobalAttr<Style>,
  @:optional var type(default, never):String;
  @:optional var data(default, never):String;
  @:optional var width(default, never):Int;
  @:optional var height(default, never):Int;
}

typedef ParamAttr = {>GlobalAttr<Style>,
  var name(default, never):String;
  var value(default, never):String;
}


typedef TableCellAttr = {>GlobalAttr<Style>,
  @:optional var abbr(default, never):String;
  @:optional var colSpan(default, never):Int;
  @:optional var headers(default, never):String;
  @:optional var rowSpan(default, never):Int;
  @:optional var scope(default, never):String;
  @:optional var sorted(default, never):String;
}

typedef InputAttr = {>GlobalAttr<Style>,
  @:optional var checked(default, never):Bool;
  @:optional var disabled(default, never):Bool;
  @:optional var required(default, never):Bool;
  @:optional var autofocus(default, never):Bool;
  @:optional var autocomplete(default, never):String;
  @:optional var value(default, never):String;
  @:optional var readOnly(default, never):Bool;
  @:html('value') @:optional var defaultValue(default, never):String;
  @:optional var type(default, never):String;
  @:optional var name(default, never):String;
  @:optional var placeholder(default, never):String;
  @:optional var max(default, never):String;
  @:optional var min(default, never):String;
  @:optional var step(default, never):String;
  @:optional var maxLength(default, never):Int;
  @:optional var pattern(default, never):String;
  @:optional var accept(default, never):String;
  @:optional var multiple(default, never):Bool;
}

typedef ButtonAttr = {>GlobalAttr<Style>,
  @:optional var disabled(default, never):Bool;
  @:optional var autofocus(default, never):Bool;
  @:optional var type(default, never):String;
  @:optional var name(default, never):String;
}

typedef TextAreaAttr = {>GlobalAttr<Style>,
  @:optional var autofocus(default, never):Bool;
  @:optional var cols(default, never):Int;
  @:optional var dirname(default, never):String;
  @:optional var disabled(default, never):Bool;
  @:optional var form(default, never):String;
  @:optional var maxlength(default, never):Int;
  @:optional var name(default, never):String;
  @:optional var placeholder(default, never):String;
  @:optional var readOnly(default, never):Bool;
  @:optional var required(default, never):Bool;
  @:optional var rows(default, never):Int;
  @:optional var value(default, never):String;
  @:optional var defaultValue(default, never):String;
  @:optional var wrap(default, never):String;
}

typedef IFrameAttr = {>GlobalAttr<Style>,
  @:optional var sandbox(default, never):String;
  @:optional var width(default, never):Int;
  @:optional var height(default, never):Int;
  @:optional var src(default, never):String;
  @:optional var srcdoc(default, never):String;
  @:optional var allowFullscreen(default, never):Bool;
  @:deprecated @:optional var scrolling(default, never):IframeScrolling;
}

@:enum abstract IframeScrolling(String) {
  var Yes = "yes";
  var No = "no";
  var Auto = "auto";
}

typedef ImageAttr = {>GlobalAttr<Style>,
  @:optional var src(default, never):String;
  @:optional var width(default, never):Int;
  @:optional var height(default, never):Int;
  @:optional var alt(default, never):String;
  @:optional var srcset(default, never):String;
  @:optional var sizes(default, never):String;
}

private typedef MediaAttr = {>GlobalAttr<Style>,
  @:optional var src(default, never):String;
  @:optional var autoplay(default, never):Bool;
  @:optional var controls(default, never):Bool;
  @:optional var loop(default, never):Bool;
  @:optional var muted(default, never):Bool;
  @:optional var preload(default, never):String;
  @:optional var volume(default, never):Float;
}

typedef AudioAttr = {>MediaAttr,
}

typedef VideoAttr = {>MediaAttr,
  @:optional var height(default, never):Int;
  @:optional var poster(default, never):String;
  @:optional var width(default, never):Int;
  @:optional var playsInline(default, never):Bool;
}

typedef SourceAttr = {>GlobalAttr<Style>,
  @:optional var src(default, never):String;
  @:optional var srcset(default, never):String;
  @:optional var media(default, never):String;
  @:optional var sizes(default, never):String;
  @:optional var type(default, never):String;
}

typedef LabelAttr = {>GlobalAttr<Style>,
  @:html('for') @:optional var htmlFor(default, never):String;
}

typedef SelectAttr = {>GlobalAttr<Style>,
  @:optional var autofocus(default, never):Bool;
  @:optional var disabled(default, never):Bool;
  @:optional var multiple(default, never):Bool;
  @:optional var name(default, never):String;
  @:optional var required(default, never):Bool;
  @:optional var size(default, never):Int;
}

typedef FormAttr = {>GlobalAttr<Style>,
  @:optional var method(default, never):String;
  @:optional var action(default, never):String;
}

typedef AnchorAttr = {>GlobalAttr<Style>,
  @:optional var href(default, never):String;
  @:optional var target(default, never):String;
  @:optional var type(default, never):String;
  @:optional var rel(default, never):AnchorRel;
}

typedef OptionAttr = {>GlobalAttr<Style>,
  @:optional var disabled:Bool;
  @:optional var label(default, never):String;
  @:jsOnly @:optional var defaultSelected(default, never):Bool;
  @:optional var selected(default, never):Bool;
  @:optional var value(default, never):String;
  @:optional var text(default, never):String;
  @:optional var index(default, never):Int;
}

typedef MetaAttr = {>GlobalAttr<Style>,
  @:optional var content(default, never):String;
  @:optional var name(default, never):String;
  @:optional var charset(default, never):String;
  @:optional var httpEquiv(default, never):MetaHttpEquiv;
}

@:enum abstract MetaHttpEquiv(String) to String from String {
  var ContentType = "content-type";
  var DefaultStyle = "default-style";
  var Refresh = "refresh";
}

typedef LinkAttr = {>GlobalAttr<Style>,
  var rel(default, never):LinkRel;
  @:optional var crossorigin(default, never):LinkCrossOrigin;
  @:optional var href(default, never):String;
  @:optional var hreflang(default, never):String;
  @:optional var media(default, never):String;
  @:optional var sizes(default, never):String;
  @:optional var type(default, never):String;
}

@:enum abstract LinkRel(String) to String from String {
  var Alternate = "alternate";
  var Author = "author";
  var DnsPrefetch = "dns-prefetch";
  var Help = "help";
  var Icon = "icon";
  var License = "license";
  var Next = "next";
  var Pingback = "pingback";
  var Preconnect = "preconnect";
  var Prefetch = "prefetch";
  var Preload = "preload";
  var Prerender = "prerender";
  var Prev = "prev";
  var Search = "search";
  var Stylesheet = "stylesheet";
}

@:enum abstract AnchorRel(String) to String from String {
  var Alternate = "alternate";
  var Author = "author";
  var Bookmark = "bookmark";
  var External = "external";
  var Help = "help";
  var License = "license";
  var Next = "next";
  var NoFollow = "nofollow";
  var NoReferrer = "noreferrer";
  var NoOpener = "noopener";
  var Prev = "prev";
  var Search = "search";
  var Tag = "tag";
}

@:enum abstract LinkCrossOrigin(String) to String from String {
  var Anonymous = "anonymous";
  var UseCredentials = "use-credentials";
}

typedef ScriptAttr = {>GlobalAttr<Style>,
  @:optional var async(default, never):Bool;
  @:optional var charset(default, never):String;
  @:optional var defer(default, never):Bool;
  @:optional var src(default, never):String;
  @:optional var type(default, never):String;
}

typedef StyleAttr = {>GlobalAttr<Style>,
  @:optional var type(default, never):String;
  @:optional var media(default, never):String;
  @:optional var nonce(default, never):String;
}

typedef CanvasAttr = {>GlobalAttr<Style>,
  @:optional var width(default, never):String;
  @:optional var height(default, never):String;
}

typedef TrackAttr = {
  var src(default, never):String;
  @:optional var kind(default, never):TrackKind;
  @:optional var label(default, never):String;
  @:optional var srclang(default, never):String;
}

@:enum abstract TrackKind(String) to String from String {
  var Subtitles = 'subtitles';
  var Captions = 'captions';
  var Descriptions = 'descriptions';
  var Chapters = 'chapters';
  var Metadata = 'metadata';
}

typedef EmbedAttr = {
  var height(default, never):Int;
  var width(default, never):Int;
  var src(default, never):String;
  var typed(default, never):String;
}

// svg attr reference: https://github.com/dumistoklus/svg-xsd-schema/blob/master/svg.xsd
typedef SvgAttr = {>GlobalAttr<Style>,
  @:optional var width(default, never):String;
  @:optional var height(default, never):String;
  @:optional var viewBox(default, never):String;// TODO: consider validating constant strings via typedef with @:fromHxx
  @:optional var xmlns(default, never):String;// has no effect, but since most svgs come with this set, better to support it I guess
}

typedef PathAttr = {
  > GlobalAttr<SvgStyle>,
  > tink.svgspec.Attributes.PathAttr,
}
typedef PolygonAttr = {
  > GlobalAttr<SvgStyle>,
  > tink.svgspec.Attributes.PolygonAttr,
}

typedef RectAttr = {
  > GlobalAttr<SvgStyle>,
  > tink.svgspec.Attributes.RectAttr,
}
typedef CircleAttr = {
  > GlobalAttr<SvgStyle>,
  > tink.svgspec.Attributes.CircleAttr,
}
typedef EllipseAttr = {
  > GlobalAttr<SvgStyle>,
  > tink.svgspec.Attributes.EllipseAttr,
}
