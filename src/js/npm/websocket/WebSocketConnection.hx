package js.npm.websocket;
import js.node.buffer.Buffer;
@:native("WebSocketConnection")
extern class WebSocketConnection {
    @:isVar public var remoteAddress(default, never):String;

    public function new():Void;
    public function sendUTF(value:String):Void;
    public function sendBytes(value:Buffer):Void;
    public function send(value:Dynamic):Void;
    public function ping(value:Dynamic):Void;
    public function pong(buffer:Buffer):Void;
    public function on(event:WebSocketConnectionEvent, handler:Dynamic):Void;
}

@:enum
abstract WebSocketConnectionEvent(String) to String{
    var MESSAGE = 'message';
    var FRAME = 'frame';
    var CLOSE = 'close';
    var ERROR = 'error';
    var PING = 'ping';
    var PONG = 'pong';
}

