import UIKit
import middle
import SDWebImage

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

class ViewController: UIViewController {
    override func loadView() {
        let imageView    = UIImageView()
        let nameListView = NameListView(
            names: [ "JACK","OLIVER","THOMAS","HARRY","JOSHUA","ALFIE","CHARLIE","DANIEL","JAMES","WILLIAM","SAMUEL","GEORGE","JOSEPH","LEWIS","ETHAN","MOHAMMED","DYLAN","BENJAMIN","ALEXANDER","JACOB","RYAN","LIAM","JAKE","MAX","LUKE","TYLER","CALLUM","MATTHEW","JAYDEN","OSCAR","ARCHIE","ADAM","RILEY","HARVEY","HARRISON","LUCAS","MUHAMMAD","HENRY","ISAAC","LEO","CONNOR","EDWARD","FINLEY","LOGAN","NOAH","CAMERON","ALEX","OWEN","RHYS","NATHAN","JAMIE","MICHAEL","MASON","TOBY","AARON","CHARLES","BEN","THEO","LOUIS","FREDDIE","FINLAY","LEON","HARLEY","DAVID","MOHAMMAD","REECE","KIAN","KAI","KYLE","BRANDON","HAYDEN","ZACHARY","KIERAN","LUCA","ASHTON","BAILEY","SEBASTIAN","GABRIEL","SAM","EVAN","BRADLEY","ELLIOT","JOHN","TAYLOR","JOE","COREY","REUBEN","JOEL","ROBERT","ELLIS","BLAKE","AIDAN","LOUIE","CHRISTOPHER","EWAN","JAY","MORGAN","BILLY","SEAN","ZAK"  ],
            blackListNames: [ "REECE", "JACK", "JOSHUA", "GEORGE" ]
        )
        
        let scrollView      = UIScrollView(frame: .zero)
        let stackView       = UIStackView(arrangedSubviews: [ imageView, nameListView ])
        stackView.axis      = .vertical
        stackView.alignment = .center
        
        scrollView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addConstraints(
            [
                stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            ]
        )
        
        if let url = URL(string: "https://media.giphy.com/media/Yggr0uQUbA79C/giphy.gif") {
            imageView.sd_setImage(with: url, placeholderImage: .init())
        }
        
        view = scrollView
        
        scrollView.backgroundColor = .red
        stackView.backgroundColor  = .blue
    }
}
