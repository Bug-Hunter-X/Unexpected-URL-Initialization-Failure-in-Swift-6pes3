func myFunction(param: String) -> String {
    guard let url = URL(string: param) else { return "Invalid URL" }
    // ... further processing with url ...
}