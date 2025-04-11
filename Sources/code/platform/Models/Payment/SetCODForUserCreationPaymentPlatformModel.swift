

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetCODForUserCreation
        Used By: Payment
    */

    class SetCODForUserCreation: Codable {
        
        
        public var mobileNo: String?
        
        public var merchantUserId: String
        
        public var isActive: Bool
        
        public var items: [SetBUPaymentLimit]
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileNo = "mobile_no"
            
            case merchantUserId = "merchant_user_id"
            
            case isActive = "is_active"
            
            case items = "items"
            
        }

        public init(isActive: Bool, items: [SetBUPaymentLimit], merchantUserId: String, mobileNo: String? = nil) {
            
            self.mobileNo = mobileNo
            
            self.merchantUserId = merchantUserId
            
            self.isActive = isActive
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mobileNo = try container.decode(String.self, forKey: .mobileNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                items = try container.decode([SetBUPaymentLimit].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetCODForUserCreation
        Used By: Payment
    */

    class SetCODForUserCreation: Codable {
        
        
        public var mobileNo: String?
        
        public var merchantUserId: String
        
        public var isActive: Bool
        
        public var items: [SetBUPaymentLimit]
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileNo = "mobile_no"
            
            case merchantUserId = "merchant_user_id"
            
            case isActive = "is_active"
            
            case items = "items"
            
        }

        public init(isActive: Bool, items: [SetBUPaymentLimit], merchantUserId: String, mobileNo: String? = nil) {
            
            self.mobileNo = mobileNo
            
            self.merchantUserId = merchantUserId
            
            self.isActive = isActive
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mobileNo = try container.decode(String.self, forKey: .mobileNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                items = try container.decode([SetBUPaymentLimit].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


