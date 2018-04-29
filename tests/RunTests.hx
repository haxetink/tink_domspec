package ;


class RunTests {

  static function main() {
    #if js
      Macro.build();
    #else
      var t:tink.domspec.Tags = null;
    #end
    travix.Logger.exit(0);
  }
  
}