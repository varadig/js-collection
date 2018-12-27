package test;
import js.Browser;
import js.html.Event;
import js.html.FileReader;
import js.html.Image;
import js.html.InputElement;
import js.jquery.JQuery;
import js.npm.Piexif;
class Test {
    public static function main() new Test();

    public function new(){

        var files:InputElement = Browser.document.createInputElement();
        files.type = 'file';
        files.addEventListener('change', handleFileSelect, false);
        Browser.document.body.appendChild(files);

    }

    public function handleFileSelect(evt:Event) {
        var file = cast (evt.target,InputElement).files[0];

        var zeroth:Array<Dynamic> = [];
        var exif:Array<Dynamic> = [];
        var gps:Array<Dynamic> = [];

        zeroth[Piexif.ImageIFD.Make] = "Make";
        zeroth[Piexif.ImageIFD.XResolution] = [777, 1];
        zeroth[Piexif.ImageIFD.YResolution] = [777, 1];
        zeroth[Piexif.ImageIFD.Software] = "Piexifjs";

        exif[Piexif.ExifIFD.DateTimeOriginal] = "2010:10:10 10:10:10";
        exif[Piexif.ExifIFD.LensMake] = "LensMake";
        exif[Piexif.ExifIFD.Sharpness] = 777;
        exif[Piexif.ExifIFD.LensSpecification] = [[1, 1], [1, 1], [1, 1], [1, 1]];
        exif[Piexif.ExifIFD.UserComment] = "kaki van a palacsintaban";

        gps[Piexif.GPSIFD.GPSVersionID] = [7, 7, 7, 7];
        gps[Piexif.GPSIFD.GPSDateStamp] = "1999:99:99 99:99:99";
        var exifObj = {"0th":zeroth, "Exif":exif, "GPS":gps};
        var exifbytes = Piexif.dump(exifObj);

        var reader = new FileReader();
        reader.onload = function(e) {
            var inserted = Piexif.insert(exifbytes, e.target.result);

            var image = new Image();
            image.src = inserted;
            image.width = 200;
            var el = new JQuery("<div></div>").append(image);
            new JQuery("#resized").prepend(el);


        };
        reader.readAsDataURL(file);
    }
}
