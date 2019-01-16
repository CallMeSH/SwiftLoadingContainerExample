import UIKit

class LoadingController: UIViewController {
    override func loadView() {
        self.view = UIView()
        view.backgroundColor = UIColor.groupTableViewBackground
        
        let indicator = UIActivityIndicatorView(style: .gray)
        indicator.hidesWhenStopped = false
        indicator.startAnimating()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
        label.text = "Loading..."
        
        let stackView = UIStackView(arrangedSubviews: [indicator, label])
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
