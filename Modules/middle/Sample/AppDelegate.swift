import UIKit
import middle

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
        let imageView = UIImageView()
        let stackView = UIStackView()

        let nameListView = NameListView(
            names: [ "JACK","OLIVER","THOMAS","HARRY","JOSHUA","ALFIE","CHARLIE","DANIEL","JAMES","WILLIAM","SAMUEL","GEORGE","JOSEPH","LEWIS","ETHAN","MOHAMMED","DYLAN","BENJAMIN","ALEXANDER","JACOB","RYAN","LIAM","JAKE","MAX","LUKE","TYLER","CALLUM","MATTHEW","JAYDEN","OSCAR","ARCHIE","ADAM","RILEY","HARVEY","HARRISON","LUCAS","MUHAMMAD","HENRY","ISAAC","LEO","CONNOR","EDWARD","FINLEY","LOGAN","NOAH","CAMERON","ALEX","OWEN","RHYS","NATHAN","JAMIE","MICHAEL","MASON","TOBY","AARON","CHARLES","BEN","THEO","LOUIS","FREDDIE","FINLAY","LEON","HARLEY","DAVID","MOHAMMAD","REECE","KIAN","KAI","KYLE","BRANDON","HAYDEN","ZACHARY","KIERAN","LUCA","ASHTON","BAILEY","SEBASTIAN","GABRIEL","SAM","EVAN","BRADLEY","ELLIOT","JOHN","TAYLOR","JOE","COREY","REUBEN","JOEL","ROBERT","ELLIS","BLAKE","AIDAN","LOUIE","CHRISTOPHER","EWAN","JAY","MORGAN","BILLY","SEAN","ZAK"  ],
            blackListNames: [ "REECE", "JACK", "JOSHUA", "GEORGE" ]
        )
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nameListView)
        
        view = stackView
    }
}
