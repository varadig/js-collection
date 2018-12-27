package js.npm.jspdf;

import haxe.extern.EitherType;
import js.html.Element;
@:enum abstract Orientation(String) from String to String{
    var landscape = 'landscape';
    var portrait = 'portrait';
}
@:enum abstract Unit(String) from String to String{
    var inch = 'in';
    var centimeter = 'cm';
    var millimeter = 'mm';//Default
    var point = 'pt';
    var pixel = 'px';
}

@:enum abstract SizeFormat(String) from String to String{
    var a0 = 'a0';//Default is a4
    var a1 = 'a1';
    var a2 = 'a2';
    var a3 = 'a3';
    var a4 = 'a4';
    var a5 = 'a5';
    var a6 = 'a6';
    var a7 = 'a7';
    var a8 = 'a8';
    var a9 = 'a9';
    var a10 = 'a10';

    var b0 = 'b0';
    var b1 = 'b1';
    var b2 = 'b2';
    var b3 = 'b3';
    var b4 = 'b4';
    var b5 = 'b5';
    var b6 = 'b6';
    var b7 = 'b7';
    var b8 = 'b8';
    var b9 = 'b9';
    var b10 = 'b10';

    var c0 = 'c0';
    var c1 = 'c1';
    var c2 = 'c2';
    var c3 = 'c3';
    var c4 = 'c4';
    var c5 = 'c5';
    var c6 = 'c6';
    var c7 = 'c7';
    var c8 = 'c8';
    var c9 = 'c9';
    var c10 = 'c10';

    var dl = 'dl';
    var governmentLegal = 'government-letter';
    var legal = 'letter';
    var juniorLegal = 'junior-legal';
    var ledger = 'ledger';
    var tabloid = 'tabloid';
    var creditCard = 'credit-card';
}
typedef SizeFormatType=EitherType<SizeFormat, Array<Int>>;


@:enum abstract OutputType(String) from String to String{
    var save = 'save';
    var arraybuffer = 'arraybuffer';
    var blob = 'blob';
    var bloburi = 'bloburi';
    var bloburl = 'bloburl';
    var datauristring = 'datauristring';
    var dataurlstring = 'dataurlstring';
    var dataurlnewwindow = 'dataurlnewwindow';
    var datauri = 'datauri';
    var dataurl = 'dataurl';
}

typedef OutputOptions = {
    ?filename:String
}
@:enum abstract ZoomOptions(String) from String to String{
    var fullwidth='fullwidth';
    var fullheight='fullheight';
    var fullpage='fullpage';
    var original='original';
}
@:enum abstract LayoutOptions(String) from String to String{
    var continuous='continuous';
    var single='single';
    var twoleft='twoleft';
    var tworight='tworight';
    var two='two';
}
@:enum abstract PageMode(String) from String to String{
    var UseNone='UseNone';
    var UseOutlines='UseOutlines';
    var UseThumbs='UseThumbs';
    var FullScreen='FullScreen';
}

@:enum abstract FontStyle(String) from String to String{
    var italic = 'italic';
    var bold = 'bold';
    var underline= 'underline';
}

typedef JSPDFOptions = {
?orientation:Orientation,
?unit:Unit,
?format:SizeFormatType
}

typedef ColorChannel = EitherType<Float,String>;
@:native("jsPDF")
extern class JSPDF {
    public function new(?options:JSPDFOptions):Void;
    public function addFont(postScriptName:String, id:String, fontStyle:String, encoding:Dynamic):Void;
    public function addPage(?format:SizeFormatType, ?orientation:Orientation):JSPDF;
    public function circle(x:Float, y:Float, r:Float, ?style:String):JSPDF;
    public function clip(rule:String):JSPDF;
    public function deletePage():JSPDF;
    public function ellipse(x:Float, y:Float, rx:Float, ry:Float, ?style:String):JSPDF;
    public function getCharSpace():Float;
    public function getCreationDate(type:Dynamic):Dynamic;
    public function getDrawColor():String;
    public function getFileId():String;
    public function getFillColor():String;
    public function getFontList():Dynamic;
    public function getLineHeightFactor():Float;
    public function getTextColor():String;
    public function insertPage(beforePage:Dynamic):JSPDF;
    public function line(x1:Float, y1:Float, x2:Float, y2:Float):JSPDF;
    public function lines(lines:Array<Array<Int>>, x:Float, y:Float, scale:Float, style:String, closed:Bool):JSPDF;
    public function lstext(text:EitherType<Array<String>, String>, x:Float, y:Float, spacing:Float):JSPDF;
    public function movePage(targetPage:Dynamic, beforePage:Dynamic):JSPDF;
    public function output(type:OutputType,?options:EitherType<String,OutputOptions>):Dynamic;

    public function rect(x:Float,y:Float,w:Float,h:Float,?style:String):Void;
    public function roundedRect(x:Float,y:Float,w:Float,h:Float,rx:Float,ry:Float,?style:String):Void;
    public function save(name:String):JSPDF;
    public function setLanguage(language:String):JSPDF;

    public function setCharSpace(charSpace:Float):JSPDF;
    public function setCreationDate(?date:Date):JSPDF;
    public function setDisplayMode(zoom:EitherType<Int,ZoomOptions>,?layout:LayoutOptions,?pmode:PageMode):JSPDF;
    public function setDrawColor(ch1:ColorChannel,?ch2:ColorChannel,?ch3:ColorChannel,?ch4:ColorChannel):JSPDF;
    public function setFileId(?value:String):JSPDF;
    public function setFillColor(ch1:ColorChannel,?ch2:ColorChannel,?ch3:ColorChannel,?ch4:ColorChannel):JSPDF;
    public function setFont(fontName:String,?fontType:FontStyle):JSPDF;
    public function setFontType(fontType:FontStyle):JSPDF;
    public function getFontSize():Float;
    public function setFontStyle(style:FontStyle):JSPDF;
    public function setLineCap(style:EitherType<String,Float>):JSPDF;
    public function setLineHeightFactor(value:Float):JSPDF;
    public function setLineJoin(style:EitherType<String,Float>):JSPDF;
    public function setLineWidth(width:Float):JSPDF;
    public function setPage(page:Int):JSPDF;
    public function setProperties(properties:Array<{key:String,value:String}>):JSPDF;
    public function getR2L():Bool;
    public function setR2L(value:Bool):JSPDF;
    public function setTextColor(ch1:ColorChannel,?ch2:ColorChannel,?ch3:ColorChannel,?ch4:ColorChannel):JSPDF;

    @:overload(function(x:Float,y:Float,text:EitherType<Array<String>,String>,?flags:Dynamic,?angle:Float,?align:String):Void { })
    public function text(text:EitherType<Array<String>,String>,x:Float,y:Float,?options:Dynamic):JSPDF;
    public function triangle(x1:Float,y1:Float,x2:Float,y2:Float,x3:Float,y3:Float,style:String):JSPDF;
    public function html(source:EitherType<Element,String>,?options:Dynamic):JSPDF;
    public function fromHTML(element:Dynamic, x:Dynamic, ?y:Dynamic, ?options:Dynamic, ?callback:Dynamic):Dynamic;
    public function addHTML(element:Dynamic, x:Dynamic, ?y:Dynamic, ?options:Dynamic, ?callback:Dynamic):Dynamic;
    public function addImage(imageData:Dynamic,format:String, x:Dynamic, y:Dynamic, width:Float,height:Float, ?alias:String, ?compression:String,?rotation:Float):Dynamic;

    public function addFileToVFS(filename:String,filecontent:String):JSPDF;

}