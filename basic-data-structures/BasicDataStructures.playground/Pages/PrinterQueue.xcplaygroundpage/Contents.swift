struct PrintJob {
    let documentName: String
    let numberOfPages: Int
}

var printQueue = Queue<PrintJob>()

printQueue.enqueue(PrintJob(documentName: "Document A", numberOfPages: 10))
printQueue.enqueue(PrintJob(documentName: "Document B", numberOfPages: 5))
printQueue.enqueue(PrintJob(documentName: "Document C", numberOfPages: 15))

func process(job: PrintJob) {
    print("Printing \(job.documentName) with \(job.numberOfPages) pages")
}

while !printQueue.isEmpty {
    if let printJob = printQueue.dequeue() {
        process(job: printJob)
    }
}
