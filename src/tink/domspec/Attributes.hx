package tink.domspec;

import tink.domspec.Style;

typedef GlobalAttr<Style> = {
  @:global @:html('class') @:optional var className(default, never):ClassName;
  @:global @:optional var id(default, never):String;
  @:global @:optional var title(default, never):String;
  @:global @:optional var lang(default, never):String;
  @:global @:optional var dir(default, never):String;
  @:global @:optional var contentEditable(default, never):Bool;
  @:global @:optional var inputMode(default, never):Bool;
  @:global @:optional var hidden(default, never):Bool;
  @:global @:optional var tabIndex(default, never):Int;
  @:global @:optional var accessKey(default, never):String;
  @:global @:optional var draggable(default, never):Bool;
  @:global @:optional var spellcheck(default, never):Bool;
  @:global @:optional var style(default, never):Style;
  @:global @:optional var role(default, never):AriaRole;
}

typedef DataAttr = {>GlobalAttr<Style>,
  var value(default, never):String;
}

typedef DetailsAttr = {>GlobalAttr<Style>,
  @:optional var open(default, never):Bool;
}

typedef DialogAttr = {>GlobalAttr<Style>,
  @:optional var open(default, never):Bool;
}

typedef FieldSetAttr = {>GlobalAttr<Style>,
  @:optional var disabled(default, never):Bool;
  @:optional var name(default, never):String;
}

typedef TimeAttr = {>GlobalAttr<Style>,
  @:optional var dateTime:DateTime;
}

abstract DateTime(String) {
  inline function new(v) this = v;

  @:from static function ofDate(d:Date)
    return new DateTime(d.toString());

  @:from static function ofFloat(f:Float) {
    final parts = DateTools.parse(f);
    return new DateTime('P${parts.days}DT${parts.hours}H${parts.minutes}M${parts.seconds}S');
  }
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
}

typedef InputAttr = {>GlobalAttr<Style>,
  @:optional var checked(default, never):Bool;
  @:html('checked') @:optional var defaultChecked(default, never):Bool;
  @:optional var disabled(default, never):Bool;
  @:optional var required(default, never):Bool;
  @:optional var autofocus(default, never):Bool;
  @:optional var autocomplete(default, never):InputAutocomplete;
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
  @:optional var minLength(default, never):Int;
  @:optional var pattern(default, never):String;
  @:optional var accept(default, never):String;
  @:optional var multiple(default, never):Bool;
  @:optional var capture(default, never):String;
  @:optional var size(default, never):Int;
  @:optional var list(default, never):String;
}

@:enum abstract InputAutocomplete(String) to String from String {
  var Off = "off";
  var On = "on";
}

typedef ButtonAttr = {>GlobalAttr<Style>,
  @:optional var disabled(default, never):Bool;
  @:optional var autofocus(default, never):Bool;
  @:optional var value(default, never):String;
  @:optional var type(default, never):String;
  @:optional var name(default, never):String;
}

typedef TextAreaAttr = {>GlobalAttr<Style>,
  @:optional var autofocus(default, never):Bool;
  @:optional var cols(default, never):Int;
  @:optional var dirName(default, never):String;
  @:optional var disabled(default, never):Bool;
  @:optional var form(default, never):String;
  @:optional var maxLength(default, never):Int;
  @:optional var minLength(default, never):Int;
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
  @:optional var allow(default, never):String;
  @:optional var allowFullscreen(default, never):Bool;
  @:optional var allowPaymentRequest(default, never):Bool;
  @:optional var height(default, never):Int;
  @:optional var name(default, never):String;
  @:optional var referrerPolicy(default, never):String;
  @:optional var sandbox(default, never):String;
  @:optional var src(default, never):String;
  @:optional var srcdoc(default, never):String;
  @:optional var loading(default, never):ImageLoading;
  @:optional var width(default, never):Int;
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
  @:optional var loading(default, never):ImageLoading;
}

@:enum abstract ImageLoading(String) from String to String {
  var Lazy = "lazy";
  var Eager = "eager";
  var Auto = "auto";
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
  @:optional var method(default, never):FormMethod;
  @:optional var action(default, never):String;
  @:html('accept-charset') @:optional var acceptCharset(default, never):String;
  @:optional var autocomplete(default, never):InputAutocomplete;
  @:optional var encoding(default, never):FormEncoding;
  @:optional var enctype(default, never):FormEncoding;
  @:optional var name(default, never):String;
  @:optional var noValidate(default, never):Bool;
  @:optional var target(default, never):String;
}

@:enum abstract FormEncoding(String) from String to String {
  var FormData = "multipart/form-data";
  var PlainText = "text/plain";
  var UrlEncoded = "application/x-www-form-urlencoded";
}

@:enum abstract FormMethod(String) from String to String {
  var Dialog = "dialog";
  var Get = "get";
  var Post = "post";
}

typedef AnchorAttr = {>GlobalAttr<Style>,
  @:optional var download(default, never):String;
  @:optional var href(default, never):String;
  @:optional var target(default, never):AnchorTarget;
  @:optional var type(default, never):String;
  @:optional var rel(default, never):AnchorRel;
}

@:enum abstract AnchorTarget(String) to String from String {
  var Blank = "_blank";
  var Parent = "_parent";
  var Self = "_self";
  var Top = "_top";
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

typedef OptGroupAttr = {>GlobalAttr<Style>,
  @:optional var disabled:Bool;
  @:optional var label(default, never):String;
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
  @:optional var crossOrigin(default, never):LinkCrossOrigin;
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

@:enum abstract AriaRole(String) to String from String {
  var Alert = "alert";
  var Application = "application";
  var Article = "article";
  var Banner = "banner";
  var Button = "button";
  var Cell = "cell";
  var Checkbox = "checkbox";
  var Comment = "comment";
  var Complementary = "complementary";
  var Contentinfo = "contentinfo";
  var Dialog = "dialog";
  var Document = "document";
  var Feed = "feed";
  var Figure = "figure";
  var Form = "form";
  var Grid = "grid";
  var Gridcell = "gridcell";
  var Heading = "heading";
  var Img = "img";
  var List = "list";
  var Listbox = "listbox";
  var Listitem = "listitem";
  var Main = "main";
  var Mark = "mark";
  var Navigation = "navigation";
  var Region = "region";
  var Row = "row";
  var Rowgroup = "rowgroup";
  var Search = "search";
  var Suggestion = "suggestion";
  var Switch = "switch";
  var Tab = "tab";
  var Table = "table";
  var Tabpanel = "tabpanel";
  var Textbox = "textbox";
  var Timer = "timer";
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
  var type(default, never):String;
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

typedef PolylineAttr = {
  > GlobalAttr<SvgStyle>,
  > tink.svgspec.Attributes.PolygonAttr,
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
