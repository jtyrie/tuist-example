import UIKit
import bottom

public class NameListView: UIView {
    let names: [String]
    
    public init(names: [String], blackListNames: [String]) {
        self.names = names.reject(blackListNames.contains)
        
        super.init(frame: .zero)
        
        setUpList(names: self.names)
        
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension NameListView {
    func setUpList(names: [String]) {
        let stackView = UIStackView()
        stackView.axis = .vertical
        names.forEach {
            let label = UILabel(frame: .zero)
            label.text = $0
            stackView.addArrangedSubview(label)
        }
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        addConstraints(
            [
                stackView.topAnchor.constraint(equalTo: topAnchor),
                stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
            ]
        )
    }
}
