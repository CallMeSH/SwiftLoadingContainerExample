import UIKit

class AppCoordinator {
    weak var window: UIWindow!
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let surprise = SurpriseController()
        let loading = LoadingContainer(surprise)
        let navigation = UINavigationController(rootViewController: loading)
        
        Timer.scheduledTimer(withTimeInterval: TimeInterval(2.0), repeats: false) { (_) in
            loading.update(state: .value)
        }

        window.rootViewController = navigation
    }
}
