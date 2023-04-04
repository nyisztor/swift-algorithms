// The Tuple
var coordinates = (x: 3, y: 5, z: -1)

var nameAndAge = (name: "Alice", age: 28)

var httpStatus = (code: 404, description: (brief: "Not Found", verbose: "The requested page can't be found on the website server."))

let thirdElement = coordinates.2

let (x, y, z) = coordinates
print("x: \(x)\ny: \(y)\nz: \(z)")

let (name, _) = nameAndAge
print("Name: \(name)")

let code = httpStatus.code
let longDescription = httpStatus.description.verbose

nameAndAge.age = 29

