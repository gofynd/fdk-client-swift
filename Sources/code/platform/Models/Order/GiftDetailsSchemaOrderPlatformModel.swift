

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GiftDetailsSchema
        Used By: Order
    */

    class GiftDetailsSchema: Codable {
        
        
        public var amount: Double
        
        public var displayText: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case displayText = "display_text"
            
        }

        public init(amount: Double, displayText: String) {
            
            self.amount = amount
            
            self.displayText = displayText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                displayText = try container.decode(String.self, forKey: .displayText)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GiftDetailsSchema
        Used By: Order
    */

    class GiftDetailsSchema: Codable {
        
        
        public var amount: Double
        
        public var displayText: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case displayText = "display_text"
            
        }

        public init(amount: Double, displayText: String) {
            
            self.amount = amount
            
            self.displayText = displayText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                displayText = try container.decode(String.self, forKey: .displayText)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
}


