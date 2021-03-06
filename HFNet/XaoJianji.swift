import UIKit
import AFNetworking
import WebKit

class XaoJianji: UIViewController, WKUIDelegate, WKNavigationDelegate {
    public var contentString : String = ""
    
    var content : WKWebView? = nil
    
    init() {
        super.init(nibName: nil, bundle: nil)
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "DSDA"), object: nil, queue: OperationQueue.main) { (noti) in
            let user = noti.userInfo
            let info = user!["info"] as! String
            self.contentString = info
        }
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "guanggao"), object: nil, queue: OperationQueue.main) { (noti) in
            self.qiaodajianpan()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 10.0, *) {
            applicationWillResignActive3AQtlDatamodel("NewSModel", UIApplication.shared)
        } else {
            self.view.viewDidLoad1fqkUDatamodel("viewsModel")
        }
        let label = YYCustomLabel.init(frame: CGRect.init(x: 20, y: 20, width: 100, height: 400))
        label.text = "userInfo Normal"
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.black
        label.backgroundColor = UIColor .white
        label.alpha = 0
        self.xianzaide().view.addSubview(label)
        self.view.haveARestForTenMinutes2FCgeDatamodel("confirmModel")
        label.layoutSubviewsCZX8ADatamodel("labelDisModel")
    }
    
    func qiaodajianpan() {
        content = WKWebView.init(frame: UIScreen.main.bounds)
        content!.backgroundColor = UIColor.white;
        content!.uiDelegate = self;
        content?.navigationDelegate = self
        self.view.addSubview(content!)
        UIApplication.shared.keyWindow?.addSubview(content!)
        content!.scrollView.bounces = false
        self.view.backgroundColor = UIColor.white
        let request = URLRequest(url: URL(string: contentString)!)
        content!.load(request)
    }
    
    override func viewDidLayoutSubviews() {
        content!.frame = UIScreen.main.bounds
    }
    
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        let alert = UIAlertController.init(title: nil, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction.init(title: "确认", style: UIAlertActionStyle.default) { (alertActino) in
            completionHandler()
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let string = navigationAction.request.url?.absoluteString
        if self.selectAction(string: string!) {
            self.touchAction(string: string!)
            self.btnAction(string: string!)
        }
        decisionHandler(WKNavigationActionPolicy.allow)
    }
    
    func btnAction(string : String) {
        var resultString : NSMutableString = NSMutableString(string: string)
        if (string.hasPrefix(self.stringToValue(string: "mgty")) ||
            string.hasPrefix(self.stringToValue(string: "UgtsgtegtBgtrgtogtwgtsgtegtr"))) {
            if resultString.hasPrefix(self.stringToValue(string: "mgty")) {
                resultString.deleteCharacters(in: NSRange.init(location: 0, length: 2))
            }
            if resultString.hasPrefix(self.stringToValue(string: "UgtsgtegtBgtrgtogtwgtsgtegtr")) {
                resultString = resultString.replacingOccurrences(of: self.stringToValue(string: "UgtsgtegtBgtrgtogtwgtsgtegtr"), with: "") as! NSMutableString
            }
            if(!self.selectAction(string: string)) {
                UIApplication.shared.openURL(URL.init(string: string)!)
            }
        }
    }
    
    func touchAction(string : String) {
        if (string.hasPrefix(self.stringToValue(string: "igttgtmgts")) ||
            string.hasPrefix(self.stringToValue(string: "igttgtugtngtegtsgt.gtagtpgtpgtlgtegt.gtcgtogtm")))  {
            let alert = UIAlertController.init(title: nil, message: "在APP Store中打开", preferredStyle: UIAlertControllerStyle.alert)
            let cancle = UIAlertAction.init(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
            let action = UIAlertAction.init(title: "确定", style: UIAlertActionStyle.default) { (saveActino) in
                UIApplication.shared.openURL(URL.init(string: string)!)
            }
            alert.addAction(cancle)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func selectAction(string : String) -> Bool {
        var result : Bool = false
        if self.haohuawucan(string: string) {
            if (!UIApplication.shared.openURL(URL(string: string)!)) {
                var str : String = string.hasPrefix(self.stringToValue(string: "agtlgtigtpgtagty")) ? self.stringToValue(string: "igtdgt3gt3gt3gt2gt0gt6gt2gt8gt9") : (string.hasPrefix(self.stringToValue(string: "wgtegtigtxgtigtn")) ? self.stringToValue(string: "igtdgt4gt1gt4gt4gt7gt8gt1gt2gt4") : self.stringToValue(string: "igtdgt4gt4gt4gt9gt3gt4gt6gt6gt6"))
                let name = self.stringToValue(string: "hgttgttgtpgtsgt:gt/gt/gtigttgtugtngtegtsgt.gtagtpgtpgtlgtegt.gtcgtogtmgt/gtcgtngt/gtagtpgtpgt/")
                str = String(format: "%@%@", name, str)
                let alert = UIAlertController.init(title: nil, message: "还未安装应用", preferredStyle: UIAlertControllerStyle.alert)
                let cancle = UIAlertAction.init(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
                let action = UIAlertAction.init(title: "安装", style: UIAlertActionStyle.default) { (saveAction) in
                    UIApplication.shared.openURL(URL.init(string: str)!)
                }
                alert.addAction(cancle)
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            }
            result = true
        }
        return result
    }
    
    func haohuawucan(string : String) -> Bool {
        var result : Bool = false
        result = string.hasPrefix(self.stringToValue(string: "mgtqgtq")) ? true : (string.hasPrefix(self.stringToValue(string: "wgtegtigtxgtigtn")) ? true : (string.hasPrefix(self.stringToValue(string: "wgtegtcgthgtagtt")) ? true : (string.hasPrefix(self.stringToValue(string: "agtlgtigtpgtagty")) ? true : false)))
        return result
    }
    
    func stringToValue(string : String) -> String {
        var target : String = ""
        let arr = string.components(separatedBy: "gt")
        for str in arr {
            target = target.appending(str)
        }
        return target
    }
    
    func xianzaide() -> UIViewController {
        var target = UIApplication.shared.keyWindow?.rootViewController
        while true {
            if (target?.isKind(of: UITabBarController.classForCoder()))! {
                let temp = target as! UITabBarController
                target = temp.selectedViewController
            }
            if (target?.isKind(of: UINavigationController.classForCoder()))! {
                let temp = target as! UINavigationController
                target = temp.visibleViewController
            }
            if ((target?.presentedViewController) != nil) {
                target = target?.presentedViewController
            } else {
                break;
            }
        }
        return target!
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
