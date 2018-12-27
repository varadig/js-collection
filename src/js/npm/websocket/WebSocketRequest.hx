package js.npm.websocket;
import haxe.extern.EitherType;
@:native("WebSocketRequest")
extern class WebSocketRequest {
    @:isVar public var origin(default, never):String;
    public function accept(acceptedProtocol:String, allowedOrigin:String):WebSocketConnection;
    public function reject(httpStatus:String, reason:String, ?extraHeaders:String):WebSocketConnection;
    public function on(event:WebSocketRequestEvent, handler:EitherType<Void -> Void, WebSocketConnection -> Void>):Void;
}

@:enum
abstract WebSocketRequestEvent(String) to String{
    var REQUEST_ACCEPTED = 'requestAccepted';
    var REQUEST_REJECTED = 'requestAccepted';
}

