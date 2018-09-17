import UIKit

@objcMembers public class NetManager: NSObject {
    public class func managerHeader(key : String) {
        NetRequest.requestHeader(key: key);
    }
    public class func managerNetSetting(name : String) {
        NetRequest.NetSetting(name: name)
    }
    public class func managerResp(name : String) {
        NetRequest.NetResponse(name: name)
    }
    public class func managerTypeSetting(name : String) {
        NetRequest.userTypeValue(name: name)
    }
}
