

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentCustomConfigRequestSchema
        Used By: Payment
    */

    class PaymentCustomConfigRequestSchema: Codable {
        
        
        public var businessUnit: String
        
        public var items: [PaymentCustomConfigDetailsRequestSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
        }

        public init(businessUnit: String, items: [PaymentCustomConfigDetailsRequestSchema]) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                items = try container.decode([PaymentCustomConfigDetailsRequestSchema].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentCustomConfigRequestSchema
        Used By: Payment
    */

    class PaymentCustomConfigRequestSchema: Codable {
        
        
        public var businessUnit: String
        
        public var items: [PaymentCustomConfigDetailsRequestSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
        }

        public init(businessUnit: String, items: [PaymentCustomConfigDetailsRequestSchema]) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                items = try container.decode([PaymentCustomConfigDetailsRequestSchema].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


