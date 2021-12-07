import UIKit
import Flutter


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    let MAKAR_API_KEY = "00000000-0000-0000-0000-000000000000"
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        
        self.setupMakar()

        let controller = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: "makarChannel.dev", binaryMessenger: controller.binaryMessenger)
        
        channel.setMethodCallHandler({
            (call: FlutterMethodCall, result: FlutterResult) -> Void in
            if (call.method == "getBatteryLevel") {
                
                
                print("123")
                
                let mainViewController = ViewController()
                controller.present(mainViewController, animated: true)
                
                //                let frame = UIScreen.main.bounds
                //                self.window = UIWindow(frame: frame)
                //
                //                self.window!.rootViewController = mainViewController
                //                self.window!.makeKeyAndVisible()
                //
                
            } else {
                result(FlutterMethodNotImplemented);
            }
        });
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    func setupMakar(){
        MakarViewerManager.shared().initialized(withKey: MAKAR_API_KEY,
                                                window: self.window,
                                                appLaunchOpts: [:],
                                                gArgc: CommandLine.argc,
                                                gArgv: CommandLine.unsafeArgv)
    }
}



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                view.backgroundColor = .yellow
        view.isOpaque = false
        MakarViewerManager.shared()?.delegate = self
    }
    
    @IBAction
    func btnEnterAR(){
        let projectId = "2e011aec1f0be6547f9069bfe05816ee"
        MakarViewerManager.shared()?.showProject(withProjectId: projectId, type: .AR)
    }
    
    @IBAction
    func btnEnterARSlam(){
        let projectId = "ca6e231b9bde8183dc8f208ab619055a"
        MakarViewerManager.shared()?.showProject(withProjectId: projectId, type: .AR_SLAM)
    }
    
    @IBAction
    func btnEnterVR(){
        let projectId = "52703099ec9adea8e12a8016b16b75e5"
        MakarViewerManager.shared()?.showProject(withProjectId: projectId, type: .VR)
    }
    
    @IBAction
    func btnOpenUserTap(){
        let userAccount = "Makarvr"
        MakarViewerManager.shared()?.showUser(with: userAccount)
    }
    
    func setOrientation(_ orientation: UIInterfaceOrientationMask){
        Makar.AppUtility.lockOrientation(orientation, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
}

extension ViewController: MakarViewerDelegate{
    
    func makarDidLoad() {
        //TODO
    }
    
    func makarDidUnload() {
        //TODO
    }
    
    func makarDidQuit() {
        //TODO
    }
    
    func makarRequestUserInfoPage(_ userId: String!) {
        //TODO
    }
    
    func makarRequestOrientation(_ orientation: String!) {
        //Makar project require device orientation
        let targetOrientation = orientation == "portrait" ? UIInterfaceOrientationMask.portrait: UIInterfaceOrientationMask.landscape
        setOrientation(targetOrientation)
    }
    
    
}


//@main
class Makar: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var orientationLock = UIInterfaceOrientationMask.all
    
    let MAKAR_API_KEY = "00000000-0000-0000-0000-000000000000"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        setupMakar()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationWillResignActive(application)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationDidEnterBackground(application)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationWillEnterForeground(application)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationDidBecomeActive(application)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationWillTerminate(application)
    }
    
    func setupMakar(){
        MakarViewerManager.shared().initialized(withKey: MAKAR_API_KEY,
                                                window: self.window,
                                                appLaunchOpts: [:],
                                                gArgc: CommandLine.argc,
                                                gArgv: CommandLine.unsafeArgv)
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
    
    struct AppUtility {
        
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask,
                                    andRotateTo rotateOrientation:UIInterfaceOrientation) {
            self.lockOrientation(orientation)
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        }
        
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            if let delegate = UIApplication.shared.delegate as? Makar {
                delegate.orientationLock = orientation
            }
        }
        
    }
    
    
}

//@UIApplicationMain
//@objc class AppDelegate: FlutterAppDelegate {
//
//    var orientationLock = UIInterfaceOrientationMask.all
//
////    let MAKAR_API_KEY = "00000000-0000-0000-0000-000000000000"
//    override func application(
//        _ application: UIApplication,
//        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//    ) -> Bool {
//
//
//        GeneratedPluginRegistrant.register(with: self)
//
//
//        let controller = window?.rootViewController as! FlutterViewController
//        let channel = FlutterMethodChannel(name: "makarChannel.dev", binaryMessenger: controller.binaryMessenger)
//        channel.setMethodCallHandler({
//            (call: FlutterMethodCall, result: FlutterResult) -> Void in
//            if (call.method == "getBatteryLevel") {
//                self.setupMakar()
//            } else {
//                result(FlutterMethodNotImplemented);
//            }
//        });
//
//        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//    }
//
////    override func applicationWillResignActive(_ application: UIApplication) {
////            MakarViewerManager.shared()?.applicationWillResignActive(application)
////    }
////
////    override func applicationDidEnterBackground(_ application: UIApplication) {
////        MakarViewerManager.shared()?.applicationDidEnterBackground(application)
////    }
////
////    override func applicationWillEnterForeground(_ application: UIApplication) {
////        MakarViewerManager.shared()?.applicationWillEnterForeground(application)
////    }
////
////    override func applicationDidBecomeActive(_ application: UIApplication) {
////        MakarViewerManager.shared()?.applicationDidBecomeActive(application)
////    }
////
////    override func applicationWillTerminate(_ application: UIApplication) {
////        MakarViewerManager.shared()?.applicationWillTerminate(application)
////    }
////    func setupMakar(){
////        print("setup")
////        MakarViewerManager.shared().initialized(withKey: MAKAR_API_KEY,
////                                                window: self.window,
////                                                appLaunchOpts: [:],
////                                                gArgc: CommandLine.argc,
////                                                gArgv: CommandLine.unsafeArgv)
////
////    }
////
////    override func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
////        return self.orientationLock
////    }
////
////    struct AppUtility {
////
////        static func lockOrientation(_ orientation: UIInterfaceOrientationMask,
////                                    andRotateTo rotateOrientation:UIInterfaceOrientation) {
////            self.lockOrientation(orientation)
////            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
////        }
////
////        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
////            if let delegate = UIApplication.shared.delegate as? AppDelegate {
////                delegate.orientationLock = orientation
////            }
////        }
////    }
//}
