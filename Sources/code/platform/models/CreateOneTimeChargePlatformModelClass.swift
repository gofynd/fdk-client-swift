

import Foundation
public extension PlatformClient {
    /*
        Model: CreateOneTimeCharge
        Used By: Billing
    */

    class CreateOneTimeCharge: Codable {
        
        
        public var name: String
        
        public var charge: OneTimeChargeItem
        
        public var isTest: Bool?
        
        public var returnUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case charge = "charge"
            
            case isTest = "is_test"
            
            case returnUrl = "return_url"
            
        }

        public init(charge: OneTimeChargeItem, isTest: Bool? = nil, name: String, returnUrl: String) {
            
            self.name = name
            
            self.charge = charge
            
            self.isTest = isTest
            
            self.returnUrl = returnUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                charge = try container.decode(OneTimeChargeItem.self, forKey: .charge)
                
            
            
            
                do {
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                returnUrl = try container.decode(String.self, forKey: .returnUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(charge, forKey: .charge)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
        }
        
    }
}
