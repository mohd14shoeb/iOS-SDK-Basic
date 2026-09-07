import UIKit

/// Main SDK class to present demo screens
@objc public class SDKDemoManager: NSObject {

    /// Shared instance
    @objc public static let shared = SDKDemoManager()

    private override init() {}

    /// Presents the first demo screen from the given view controller
    /// - Parameter viewController: The view controller to present from (usually the host app's root view controller)
    @objc public func showFirstScreen(from viewController: UIViewController) {
        let firstVC = FirstDemoViewController()
        let navController = UINavigationController(rootViewController: firstVC)
        navController.modalPresentationStyle = .fullScreen
        viewController.present(navController, animated: true, completion: nil)
    }
}

