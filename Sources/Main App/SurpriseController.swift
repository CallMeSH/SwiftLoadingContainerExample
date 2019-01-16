import UIKit

class SurpriseController: UIViewController {
    override func loadView() {
        let imageView = UIImageView(image: UIImage(named: "surprise"))
        imageView.contentMode = .scaleAspectFill
        
        self.view = imageView
    }
}
