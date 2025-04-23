

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetCODForUserRequest
        Used By: Payment
    */

    class SetCODForUserRequest: Codable {
        
        
        public var businessUnit: String?
        
        public var mobileno: String
        
        public var isActive: Bool
        
        public var merchantUserId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case mobileno = "mobileno"
            
            case isActive = "is_active"
            
            case merchantUserId = "merchant_user_id"
            
        }

        public init(businessUnit: String? = nil, isActive: Bool, merchantUserId: String, mobileno: String) {
            
            self.businessUnit = businessUnit
            
            self.mobileno = mobileno
            
            self.isActive = isActive
            
            self.merchantUserId = merchantUserId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mobileno = try container.decode(String.self, forKey: .mobileno)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetCODForUserRequest
        Used By: Payment
    */

    class SetCODForUserRequest: Codable {
        
        
        public var businessUnit: String?
        
        public var mobileno: String
        
        public var isActive: Bool
        
        public var merchantUserId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case mobileno = "mobileno"
            
            case isActive = "is_active"
            
            case merchantUserId = "merchant_user_id"
            
        }

        public init(businessUnit: String? = nil, isActive: Bool, merchantUserId: String, mobileno: String) {
            
            self.businessUnit = businessUnit
            
            self.mobileno = mobileno
            
            self.isActive = isActive
            
            self.merchantUserId = merchantUserId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mobileno = try container.decode(String.self, forKey: .mobileno)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
        }
        
    }
}


