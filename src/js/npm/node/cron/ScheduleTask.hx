package js.npm.node.cron;
@jsRequire("scheduled-task")
extern class ScheduleTask {
    public function new() :Void;
    public function start() :ScheduleTask;
    public function stop() :ScheduleTask;
    public function getStatus() :String;
}
