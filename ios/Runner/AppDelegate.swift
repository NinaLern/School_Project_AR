import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var orientationLock = UIInterfaceOrientationMask.all
    
    let MAKAR_API_KEY = "00000000-0000-0000-0000-000000000000"
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        
        GeneratedPluginRegistrant.register(with: self)
        
        
        let controller = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: "makarChannel.dev", binaryMessenger: controller.binaryMessenger)
        channel.setMethodCallHandler({
            (call: FlutterMethodCall, result: FlutterResult) -> Void in
            if (call.method == "getBatteryLevel") {
                self.setupMakar()
            } else {
                result(FlutterMethodNotImplemented);
            }
        });
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    override func applicationWillResignActive(_ application: UIApplication) {
            MakarViewerManager.shared()?.applicationWillResignActive(application)
    }
    
    override func applicationDidEnterBackground(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationDidEnterBackground(application)
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationWillEnterForeground(application)
    }
    
    override func applicationDidBecomeActive(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationDidBecomeActive(application)
    }
    
    override func applicationWillTerminate(_ application: UIApplication) {
        MakarViewerManager.shared()?.applicationWillTerminate(application)
    }
    func setupMakar(){
        print("setup")
        MakarViewerManager.shared().initialized(withKey: MAKAR_API_KEY,
                                                window: self.window,
                                                appLaunchOpts: [:],
                                                gArgc: CommandLine.argc,
                                                gArgv: CommandLine.unsafeArgv)
        
    }
    
    override func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
    
    struct AppUtility {
        
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask,
                                    andRotateTo rotateOrientation:UIInterfaceOrientation) {
            self.lockOrientation(orientation)
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        }
        
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.orientationLock = orientation
            }
        }
    }
    
    
    //@main
    //    class Makar: UIResponder, UIApplicationDelegate {
    //
    //        var window: UIWindow?
    //        var orientationLock = UIInterfaceOrientationMask.all
    //
    //        let MAKAR_API_KEY = "00000000-0000-0000-0000-000000000000"
    //
    //        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    //            // Override point for customization after application launch.
    //
    //
    //            setupMakar()
    //
    //            return true
    //        }
    //
    //
    //
    //        func applicationWillResignActive(_ application: UIApplication) {
    //            MakarViewerManager.shared()?.applicationWillResignActive(application)
    //        }
    //
    //        func applicationDidEnterBackground(_ application: UIApplication) {
    //            MakarViewerManager.shared()?.applicationDidEnterBackground(application)
    //        }
    //
    //        func applicationWillEnterForeground(_ application: UIApplication) {
    //            MakarViewerManager.shared()?.applicationWillEnterForeground(application)
    //        }
    //
    //        func applicationDidBecomeActive(_ application: UIApplication) {
    //            MakarViewerManager.shared()?.applicationDidBecomeActive(application)
    //        }
    //
    //        func applicationWillTerminate(_ application: UIApplication) {
    //            MakarViewerManager.shared()?.applicationWillTerminate(application)
    //        }
    //
    //        func setupMakar(){
    //            MakarViewerManager.shared().initialized(withKey: MAKAR_API_KEY,
    //                                                    window: self.window,
    //                                                    appLaunchOpts: [:],
    //                                                    gArgc: CommandLine.argc,
    //                                                    gArgv: CommandLine.unsafeArgv)
    //
    //        }
    //
    //        func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
    //            return self.orientationLock
    //        }
    //
    //        struct AppUtility {
    //
    //            static func lockOrientation(_ orientation: UIInterfaceOrientationMask,
    //                                        andRotateTo rotateOrientation:UIInterfaceOrientation) {
    //                self.lockOrientation(orientation)
    //                UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
    //            }
    //
    //            static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
    //                if let delegate = UIApplication.shared.delegate as? Makar {
    //                    delegate.orientationLock = orientation
    //                }
    //            }
    //
    //        }
    //
    //
    //    }
}
