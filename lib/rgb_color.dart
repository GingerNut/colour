part of colour;

class RgbColor{

  int r;
  int g;
  int b;

  String _string;
  bool valid = false;

  RgbColor(this.r, this.g, this.b);

  RgbColor.fromString(String string){

    string = string.substring(1,string.length);

    String rString = string.substring(0,2);

    r = int.parse("0x" + rString);

    String gString = string.substring(2,4);

    g = int.parse("0x" + gString);

    String bString = string.substring(4,6);

    b = int.parse("0x" + bString);
 }

  get string{
    if(_string != null && valid) return _string;

    getString(int number){
      String string = number.toRadixString(16);
      while(string.length < 2){
        string = '0' + string;
      }
      return string;
    }

    _string = '#' + getString(r) + getString(g) + getString(b);

    valid = true;

    return _string;
  }

  String toString() => "r: $r, g: $g, b: $b";

  String toCssString() => 'rgb(${r.toInt()}, ${g.toInt()}, ${b.toInt()})';

}