package tink.domspec;

typedef GlobalAttr = {
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

typedef FieldSetAttr = {>GlobalAttr, 
  @:optional var disabled(default, never):Bool; 
  @:optional var name(default, never):String; 
}

typedef ObjectAttr = {>GlobalAttr, 
  @:optional var type(default, never):String;
  @:optional var data(default, never):String;
  @:optional var width(default, never):Int;
  @:optional var height(default, never):Int;  
}

typedef ParamAttr = {>GlobalAttr, 
  var name(default, never):String;
  var value(default, never):String;
}


typedef TableCellAttr = {> GlobalAttr,
  @:optional var abbr(default, never):String;
  @:optional var colSpan(default, never):Int;
  @:optional var headers(default, never):String;
  @:optional var rowSpan(default, never):Int;
  @:optional var scope(default, never):String;
  @:optional var sorted(default, never):String;
}
@:enum abstract InputAutoComplete(String) {
  var On = "on";
  var Off = "off";
  @:from static inline function ofBool(b:Bool)
    return if (b) On else Off;
}

typedef InputAttr = {>GlobalAttr,
  @:optional var checked(default, never):Bool;
  @:optional var disabled(default, never):Bool;
  @:optional var required(default, never):Bool;
  @:optional var autofocus(default, never):Bool;
  @:optional var autocomplete(default, never):InputAutoComplete;
  @:optional var value(default, never):String;
  @:html('value') @:optional var defaultValue(default, never):String;
  @:optional var type(default, never):String;
  @:optional var name(default, never):String;
  @:optional var placeholder(default, never):String;
  @:optional var max(default, never):String;
  @:optional var min(default, never):String;
  @:optional var step(default, never):String;
  @:optional var maxlength(default, never):Int;
  @:optional var pattern(default, never):String;
  @:optional var accept(default, never):String;
}

typedef TextAreaAttr = {>GlobalAttr,
  @:optional var autofocus(default, never):Bool;
  @:optional var cols(default, never):Int;
  @:optional var dirname(default, never):String;
  @:optional var disabled(default, never):Bool;
  @:optional var form(default, never):String;
  @:optional var maxlength(default, never):Int;
  @:optional var name(default, never):String;
  @:optional var placeholder(default, never):String;
  @:optional var readonly(default, never):Bool;
  @:optional var required(default, never):Bool;
  @:optional var rows(default, never):Int;
  @:optional var wrap(default, never):String;
}

typedef IFrameAttr = {>GlobalAttr,
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

typedef ImageAttr = {>GlobalAttr,
  @:optional var src(default, never):String;
  @:optional var width(default, never):Int;
  @:optional var height(default, never):Int;
}

typedef AudioAttr = {>GlobalAttr,
  @:optional var src(default, never):String;
  @:optional var autoplay(default, never):Bool;
  @:optional var controls(default, never):Bool;
  @:optional var loop(default, never):Bool;
  @:optional var muted(default, never):Bool;
  @:optional var preload(default, never):String;
}

typedef VideoAttr = {>GlobalAttr,
  @:optional var src(default, never):String;
  @:optional var autoplay(default, never):Bool;
  @:optional var controls(default, never):Bool;
}

typedef SourceAttr = {>GlobalAttr,
  @:optional var src(default, never):String;
  @:optional var srcset(default, never):String;
  @:optional var media(default, never):String;
  @:optional var sizes(default, never):String;
  @:optional var type(default, never):String;
}

typedef LabelAttr = {>GlobalAttr,
  @:html('for') @:optional var htmlFor(default, never):String;
}

typedef SelectAttr = {>GlobalAttr,
  @:optional var autofocus(default, never):Bool;
  @:optional var disabled(default, never):Bool;
  @:optional var multiple(default, never):Bool;
  @:optional var name(default, never):String;
  @:optional var required(default, never):Bool;
  @:optional var size(default, never):Int;
}

typedef FormAttr = {>GlobalAttr,
  @:optional var method(default, never):String;
  @:optional var action(default, never):String;
}

typedef AnchorAttr = {>GlobalAttr,
  @:optional var href(default, never):String;
  @:optional var target(default, never):String;
  @:optional var type(default, never):String;
}

typedef OptionAttr = {>GlobalAttr,
  @:optional var disabled:Bool;
  @:optional var label(default, never):String;
  @:jsOnly @:optional var defaultSelected(default, never):Bool;
  @:optional var selected(default, never):Bool;
  @:optional var value(default, never):String;
  @:optional var text(default, never):String;
  @:optional var index(default, never):Int;
}

typedef ScriptAttr = {>GlobalAttr,
  @:optional var async(default, never):Bool;
  @:optional var charset(default, never):String;
  @:optional var defer(default, never):Bool;
  @:optional var src(default, never):String;
  @:optional var type(default, never):String;
}

typedef StyleAttr = {>GlobalAttr,
  @:optional var type(default, never):String;
  @:optional var media(default, never):String;
  @:optional var nonce(default, never):String;
}

typedef CanvasAttr = {>GlobalAttr,
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
