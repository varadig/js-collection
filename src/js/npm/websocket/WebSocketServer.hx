package js.npm.websocket;
import js.node.http.Server;
@:jsRequire('websocket','server')
extern class WebSocketServer {
    public function new(config:ServerConfig):Void;
    public function mount(config:ServerConfig):Void;
    public function unmount():Void;
    public function closeAllConnections():Void;
    public function shutDown():Void;

    public function broadcastUTF(utfData:String):Void;

    public function on (event:WebSocketServerEvent,handler:Dynamic):Void;
}


@:enum
abstract WebSocketServerEvent(String) to String{
    var REQUEST="request";
    var CONNECT="connect";
    var CLOSE="close";
}
typedef ServerConfig={
    httpServer:Server,
?maxReceivedFrameSize:UInt,
        ?maxReceivedMessageSize:UInt,
        ?fragmentOutgoingMessages:Bool,
        ?fragmentationThreshold:UInt,
        ?keepalive:Bool,
        ?keepaliveInterval:UInt,
        ?dropConnectionOnKeepaliveTimeout:Bool,
        ?keepaliveGracePeriod:UInt,
        ?assembleFragments:Bool,
        ?autoAcceptConnections:Bool,
        ?closeTimeout:UInt,
        ?disableNagleAlgorithm:Bool,
        ?ignoreXForwardedFor:Bool,
}
