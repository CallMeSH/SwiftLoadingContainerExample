import UIKit

class ErrorController: UIViewController {
    override func loadView() {
        self.view = UIView()
        view.backgroundColor = UIColor.groupTableViewBackground
        
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title1)
        title.text = "Something went wrong..."

        let button = UIButton(type: .system)
        button.setTitle("Reload", for: .normal)
        
        let stackView = UIStackView(arrangedSubviews: [title, button])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 12.0
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: stackView.centerYAnchor)
            ])
    }
}
