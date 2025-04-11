

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentGatewayToBeReviewed
        Used By: Payment
    */

    class PaymentGatewayToBeReviewed: Codable {
        
        
        public var aggregators: [String]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregators = "aggregators"
            
            case success = "success"
            
        }

        public init(aggregators: [String], success: Bool) {
            
            self.aggregators = aggregators
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregators = try container.decode([String].self, forKey: .aggregators)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentGatewayToBeReviewed
        Used By: Payment
    */

    class PaymentGatewayToBeReviewed: Codable {
        
        
        public var aggregators: [String]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregators = "aggregators"
            
            case success = "success"
            
        }

        public init(aggregators: [String], success: Bool) {
            
            self.aggregators = aggregators
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregators = try container.decode([String].self, forKey: .aggregators)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


