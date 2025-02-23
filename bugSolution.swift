func myFunction(param: String) -> String {
    if let encodedURLString = param.addingPercentEncoding(withAllowedCharacters: .urlComponentAllowed), let url = URL(string: encodedURLString) {
        // ... further processing with url ...
        return "Success"
    } else {
        return "Invalid URL"
    }
} 

//Alternative using URLComponents
func myFunctionWithComponents(param: String) -> String {
    guard var urlComponents = URLComponents(string: param) else { return "Invalid URL" }
    urlComponents.percentEncodedQuery = urlComponents.percentEncodedQuery?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    guard let url = urlComponents.url else { return "Invalid URL" }
    // ... further processing with url ...
    return "Success"
}