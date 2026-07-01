

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PayoutsDetails
        Used By: Payment
    */

    class PayoutsDetails: Codable {
        
        
        public var success: Bool
        
        public var items: [Payout]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
        }

        public init(items: [Payout], success: Bool) {
            
            self.success = success
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                items = try container.decode([Payout].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PayoutsDetails
        Used By: Payment
    */

    class PayoutsDetails: Codable {
        
        
        public var success: Bool
        
        public var items: [Payout]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
        }

        public init(items: [Payout], success: Bool) {
            
            self.success = success
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                items = try container.decode([Payout].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


