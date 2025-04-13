

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundPriorityRequestSerializer
        Used By: Payment
    */

    class RefundPriorityRequestSerializer: Codable {
        
        
        public var apportion: Bool
        
        public var refundSourcesPriority: [RefundSourcesPriority]
        

        public enum CodingKeys: String, CodingKey {
            
            case apportion = "apportion"
            
            case refundSourcesPriority = "refund_sources_priority"
            
        }

        public init(apportion: Bool, refundSourcesPriority: [RefundSourcesPriority]) {
            
            self.apportion = apportion
            
            self.refundSourcesPriority = refundSourcesPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                apportion = try container.decode(Bool.self, forKey: .apportion)
                
            
            
            
                refundSourcesPriority = try container.decode([RefundSourcesPriority].self, forKey: .refundSourcesPriority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(apportion, forKey: .apportion)
            
            
            
            
            try? container.encodeIfPresent(refundSourcesPriority, forKey: .refundSourcesPriority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundPriorityRequestSerializer
        Used By: Payment
    */

    class RefundPriorityRequestSerializer: Codable {
        
        
        public var apportion: Bool
        
        public var refundSourcesPriority: [RefundSourcesPriority]
        

        public enum CodingKeys: String, CodingKey {
            
            case apportion = "apportion"
            
            case refundSourcesPriority = "refund_sources_priority"
            
        }

        public init(apportion: Bool, refundSourcesPriority: [RefundSourcesPriority]) {
            
            self.apportion = apportion
            
            self.refundSourcesPriority = refundSourcesPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                apportion = try container.decode(Bool.self, forKey: .apportion)
                
            
            
            
                refundSourcesPriority = try container.decode([RefundSourcesPriority].self, forKey: .refundSourcesPriority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(apportion, forKey: .apportion)
            
            
            
            
            try? container.encodeIfPresent(refundSourcesPriority, forKey: .refundSourcesPriority)
            
            
        }
        
    }
}


