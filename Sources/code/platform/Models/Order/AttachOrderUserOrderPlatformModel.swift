

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AttachOrderUser
        Used By: Order
    */

    class AttachOrderUser: Codable {
        
        
        public var otpData: AttachUserOtpData
        
        public var fyndOrderId: String
        
        public var userInfo: AttachUserInfo
        

        public enum CodingKeys: String, CodingKey {
            
            case otpData = "otp_data"
            
            case fyndOrderId = "fynd_order_id"
            
            case userInfo = "user_info"
            
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            
            self.otpData = otpData
            
            self.fyndOrderId = fyndOrderId
            
            self.userInfo = userInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)
                
            
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
            
                userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(otpData, forKey: .otpData)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AttachOrderUser
        Used By: Order
    */

    class AttachOrderUser: Codable {
        
        
        public var otpData: AttachUserOtpData
        
        public var fyndOrderId: String
        
        public var userInfo: AttachUserInfo
        

        public enum CodingKeys: String, CodingKey {
            
            case otpData = "otp_data"
            
            case fyndOrderId = "fynd_order_id"
            
            case userInfo = "user_info"
            
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            
            self.otpData = otpData
            
            self.fyndOrderId = fyndOrderId
            
            self.userInfo = userInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)
                
            
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
            
                userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(otpData, forKey: .otpData)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
        }
        
    }
}


