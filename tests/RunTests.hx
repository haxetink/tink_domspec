package ;


class RunTests {

  static function main() {
    #if (js && !nodejs)
      Macro.build();
    #else
      var t:tink.domspec.Tags = null;
    #end
    travix.Logger.exit(0);
  }

}