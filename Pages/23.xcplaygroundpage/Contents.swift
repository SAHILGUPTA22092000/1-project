struct Content {
    var name: String
    let fileExtension: String?
    
   
    var filename: String {
        return name + "." + (fileExtension ?? "A")
    }
}
struct ContentViewModel {
    private var content: Content
    
    init(_ content: Content) {
        self.content = content
    }
    
    var name: String {
        get {
            content.name
        }
        set {
            content.name = newValue
        }
    }
}

var content = Content(name: "swiftlee-banner",fileExtension: nil)
var viewModel = ContentViewModel(content)
viewModel.name = "SwiftLee Post"
print(viewModel.name)
print(content.name)
var s : Content?
print(s?.fileExtension?.isEmpty)
s=content
print(s?.fileExtension?.isEmpty )
