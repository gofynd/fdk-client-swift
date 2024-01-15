

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentModeCustomConfigSchema
        Used By: Payment
    */

    class PaymentModeCustomConfigSchema: Codable {
        
        
        public var displayName: String
        
        public var businessUnit: String
        
        public var customConfig: PaymentCustomConfigDetailsSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case businessUnit = "business_unit"
            
            case customConfig = "custom_config"
            
        }

        public init(businessUnit: String, customConfig: PaymentCustomConfigDetailsSchema, displayName: String) {
            
            self.displayName = displayName
            
            self.businessUnit = businessUnit
            
            self.customConfig = customConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                customConfig = try container.decode(PaymentCustomConfigDetailsSchema.self, forKey: .customConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(customConfig, forKey: .customConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentModeCustomConfigSchema
        Used By: Payment
    */

    class PaymentModeCustomConfigSchema: Codable {
        
        
        public var displayName: String
        
        public var businessUnit: String
        
        public var customConfig: PaymentCustomConfigDetailsSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case businessUnit = "business_unit"
            
            case customConfig = "custom_config"
            
        }

        public init(businessUnit: String, customConfig: PaymentCustomConfigDetailsSchema, displayName: String) {
            
            self.displayName = displayName
            
            self.businessUnit = businessUnit
            
            self.customConfig = customConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                customConfig = try container.decode(PaymentCustomConfigDetailsSchema.self, forKey: .customConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(customConfig, forKey: .customConfig)
            
            
        }
        
    }
}


