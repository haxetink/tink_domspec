package ;


class RunTests {

  static function main() {
    #if (js && !nodejs)
      Macro.build();
      var s = tink.domspec.Style.CSSParser.parseString('background: blue');
      if (s.backgroundColor != 'blue')
        travix.Logger.exit(1);
    #else
      var t:tink.domspec.Tags = null;
    #end
    travix.Logger.exit(0);
  }

}