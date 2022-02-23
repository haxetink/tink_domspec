package tink.domspec;

import tink.domspec.Attributes;

typedef Tags = {
  var normal:{
    var html:GlobalAttr<Style>;
    var body:GlobalAttr<Style>;
    var iframe:IFrameAttr;
    var object:ObjectAttr;
    var head:GlobalAttr<Style>;
    var time:TimeAttr;
    var title:GlobalAttr<Style>;
    var div:GlobalAttr<Style>;
    var code:GlobalAttr<Style>;
    var aside:GlobalAttr<Style>;
    var article:GlobalAttr<Style>;
    var blockquote:GlobalAttr<Style>;
    var section:GlobalAttr<Style>;
    var header:GlobalAttr<Style>;
    var footer:GlobalAttr<Style>;
    var main:GlobalAttr<Style>;
    var nav:GlobalAttr<Style>;
    var table:GlobalAttr<Style>;
    var thead:GlobalAttr<Style>;
    var tbody:GlobalAttr<Style>;
    var tfoot:GlobalAttr<Style>;
    var tr:GlobalAttr<Style>;
    var td:TableCellAttr;
    var th:TableCellAttr;
    var h1:GlobalAttr<Style>;
    var h2:GlobalAttr<Style>;
    var h3:GlobalAttr<Style>;
    var h4:GlobalAttr<Style>;
    var h5:GlobalAttr<Style>;
    var h6:GlobalAttr<Style>;
    var strong:GlobalAttr<Style>;
    var em:GlobalAttr<Style>;
    var span:GlobalAttr<Style>;
    var a:AnchorAttr;
    var p:GlobalAttr<Style>;
    var ins:GlobalAttr<Style>;
    var del:GlobalAttr<Style>;
    var i:GlobalAttr<Style>;
    var b:GlobalAttr<Style>;
    var small:GlobalAttr<Style>;
    var menu:GlobalAttr<Style>;
    var ul:GlobalAttr<Style>;
    var ol:GlobalAttr<Style>;
    var li:GlobalAttr<Style>;
    var label:LabelAttr;
    var button:ButtonAttr;
    var pre:GlobalAttr<Style>;
    var picture:GlobalAttr<Style>;
    var canvas:CanvasAttr;
    var audio:AudioAttr;
    var video:VideoAttr;
    var form:FormAttr;
    var fieldset:FieldSetAttr;
    var legend:GlobalAttr<Style>;
    var select:SelectAttr;
    var option:OptionAttr;
    var datalist:GlobalAttr<Style>;
    var dl:GlobalAttr<Style>;
    var dt:GlobalAttr<Style>;
    var dd:GlobalAttr<Style>;
    var details:#if haxe4 DetailsAttr #else GlobalAttr<Style>#end;
    var dialog:DialogAttr;
    var summary:GlobalAttr<Style>;
    var sub:GlobalAttr<Style>;
    var sup:GlobalAttr<Style>;
    @:element(js.html.svg.SVGElement) var svg:SvgAttr;
    @:element(js.html.svg.PolylineElement) var polyline:PolylineAttr;
    @:element(js.html.svg.PathElement) var path:PathAttr;
    @:element(js.html.svg.PolygonElement) var polygon:PolygonAttr;
    @:element(js.html.svg.CircleElement) var circle:CircleAttr;
    @:element(js.html.svg.RectElement) var rect:RectAttr;
    @:element(js.html.svg.EllipseElement) var ellipse:EllipseAttr;
  }
  var opaque:{
    var textarea:TextAreaAttr;//right?
    var script:ScriptAttr;
    var style:StyleAttr;
  }
  var void:{
    // var area:GlobalAttr<Style>; //a bit hard to make type safe
    // var base:GlobalAttr<Style>; //not needed, I hope
    var br:GlobalAttr<Style>;
    // var col:GlobalAttr<Style>; //is more of an HTML4 thing
    var embed:EmbedAttr;
    var hr:GlobalAttr<Style>;
    var img:ImageAttr;
    var input:InputAttr;
    var link:LinkAttr;
    var meta:MetaAttr;
    var param:ParamAttr;
    var source:SourceAttr;
    var track:TrackAttr;
    var wbr:GlobalAttr<Style>;
  }
}
