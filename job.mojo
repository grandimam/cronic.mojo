from collections import Optional

struct Job:

    var interval: Int
    var last_run: Int
    var next_run: Int
    
    fn __init__(inout self, interval: Int):
        self.interval = interval
        self.last_run = Optional[Int](None)

    fn __copyinit__(inout self, existing: Self):
        self.interval = existing.interval
        self.last_run = existing.last_run
        self.next_run = existing.next_run

    fn __moveinit__(inout self, owned existing: Self):
        self.interval = existing.interval^
        self.last_run = existing.last_run^
        self.next_run = existing.next_run^