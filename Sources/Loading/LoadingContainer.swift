import UIKit

class LoadingContainer: UIViewController {
    enum State {
        case error
        case loading
        case value
    }
    
    private(set) var state: State
    private var valueController: UIViewController
    
    init(_ valueController: UIViewController) {
        self.valueController = valueController
        self.state = .loading
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private weak var loadingController: UIViewController!
    private weak var errorController: UIViewController!
    
    override func loadView() {
        super.loadView()
        
        let loadingController = LoadingController()
        let errorController = ErrorController()
        
        for controller in [loadingController, errorController, valueController] {
            insert(controller)
        }
        
        self.loadingController = loadingController
        self.errorController = errorController
        
        sortControllers()
    }
    
    private func insert(_ controller: UIViewController) {
        addChild(controller)
        
        let childView = controller.view!
        
        view.addSubview(childView)
        childView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view.leftAnchor.constraint(equalTo: childView.leftAnchor),
            view.rightAnchor.constraint(equalTo: childView.rightAnchor),
            view.topAnchor.constraint(equalTo: childView.topAnchor),
            view.bottomAnchor.constraint(equalTo: childView.bottomAnchor)
            ])
        
        controller.didMove(toParent: self)
    }
    
    private func sortControllers() {
        var mainController: UIViewController!
        
        switch state {
        case .error:
            mainController = errorController
        case .loading:
            mainController = loadingController
        case .value:
            mainController = valueController
        }
        
        view.bringSubviewToFront(mainController.view)
    }
    
    func update(state: State) {
        self.state = state
        sortControllers()
    }
}
