package tink.domspec;

import tink.domspec.Attributes;

typedef Tags = {
  var normal:{  
    var iframe:IFrameAttr;
    var object:ObjectAttr;
    var div:GlobalAttr;
    var aside:GlobalAttr;
    var section:GlobalAttr;
    var header:GlobalAttr;
    var footer:GlobalAttr;
    var main:GlobalAttr;
    var nav:GlobalAttr;
    var table:GlobalAttr;
    var thead:GlobalAttr;
    var tbody:GlobalAttr;
    var tfoot:GlobalAttr;
    var tr:GlobalAttr;
    var td:TableCellAttr;
    var th:TableCellAttr;
    var h1:GlobalAttr;
    var h2:GlobalAttr;
    var h3:GlobalAttr;
    var h4:GlobalAttr;
    var h5:GlobalAttr;
    var h6:GlobalAttr;
    var strong:GlobalAttr;
    var em:GlobalAttr;
    var span:GlobalAttr;
    var a:AnchorAttr;
    var p:GlobalAttr;
    var i:GlobalAttr;
    var b:GlobalAttr;
    var small:GlobalAttr;
    var menu:GlobalAttr;
    var ul:GlobalAttr;
    var ol:GlobalAttr;
    var li:GlobalAttr;
    var label:LabelAttr;
    var button:ButtonAttr;
    var pre:GlobalAttr;
    var canvas:CanvasAttr;
    var audio:AudioAttr;
    var video:VideoAttr;
    var form:FormAttr;
    var fieldset:FieldSetAttr;
    var select:SelectAttr;
    var option:OptionAttr;
    var dl:GlobalAttr;
    var dt:GlobalAttr;
    var dd:GlobalAttr;
  }
  var opaque:{
    var textarea:TextAreaAttr;//right?
    var script:ScriptAttr;
    var style:StyleAttr;
  }
  var void:{
    // var area:GlobalAttr; //a bit hard to make type safe
    // var base:GlobalAttr; //not needed, I hope
    var br:GlobalAttr;
    // var col:GlobalAttr; //is more of an HTML4 thing
    var embed:EmbedAttr;
    var hr:GlobalAttr;
    var img:ImageAttr;
    var input:InputAttr;
    // var link:GlobalAttr; //have to actually read the spec
    // var meta:GlobalAttr; //have to actually read the spec
    var param:ParamAttr;
    var source:SourceAttr;
    var track:TrackAttr;
    var wbr:GlobalAttr;
  }
}









