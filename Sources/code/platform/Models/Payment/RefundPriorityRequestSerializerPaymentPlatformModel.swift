

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundPriorityRequestSerializer
        Used By: Payment
    */

    class RefundPriorityRequestSerializer: Codable {
        
        
        public var settleOffline: Bool?
        
        public var apportion: Bool
        
        public var refundSourcesPriority: [RefundSourcesPriority]
        

        public enum CodingKeys: String, CodingKey {
            
            case settleOffline = "settle_offline"
            
            case apportion = "apportion"
            
            case refundSourcesPriority = "refund_sources_priority"
            
        }

        public init(apportion: Bool, refundSourcesPriority: [RefundSourcesPriority], settleOffline: Bool? = nil) {
            
            self.settleOffline = settleOffline
            
            self.apportion = apportion
            
            self.refundSourcesPriority = refundSourcesPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    settleOffline = try container.decode(Bool.self, forKey: .settleOffline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                apportion = try container.decode(Bool.self, forKey: .apportion)
                
            
            
            
                refundSourcesPriority = try container.decode([RefundSourcesPriority].self, forKey: .refundSourcesPriority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(settleOffline, forKey: .settleOffline)
            
            
            
            
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
        
        
        public var settleOffline: Bool?
        
        public var apportion: Bool
        
        public var refundSourcesPriority: [RefundSourcesPriority]
        

        public enum CodingKeys: String, CodingKey {
            
            case settleOffline = "settle_offline"
            
            case apportion = "apportion"
            
            case refundSourcesPriority = "refund_sources_priority"
            
        }

        public init(apportion: Bool, refundSourcesPriority: [RefundSourcesPriority], settleOffline: Bool? = nil) {
            
            self.settleOffline = settleOffline
            
            self.apportion = apportion
            
            self.refundSourcesPriority = refundSourcesPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    settleOffline = try container.decode(Bool.self, forKey: .settleOffline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                apportion = try container.decode(Bool.self, forKey: .apportion)
                
            
            
            
                refundSourcesPriority = try container.decode([RefundSourcesPriority].self, forKey: .refundSourcesPriority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(settleOffline, forKey: .settleOffline)
            
            
            
            
            try? container.encodeIfPresent(apportion, forKey: .apportion)
            
            
            
            
            try? container.encodeIfPresent(refundSourcesPriority, forKey: .refundSourcesPriority)
            
            
        }
        
    }
}


