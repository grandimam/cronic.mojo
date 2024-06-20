from collections import List
from job import Job

struct Scheduler:
    var jobs: List[Job]

    fn __init__(inout self):
        self.jobs = List[Job]()

    fn every(self, interval: Int) -> Job:
        var job = Job(1)
        return job
    
    fn should_run(self) -> Bool:
        return True

    fn do(self):
        pass