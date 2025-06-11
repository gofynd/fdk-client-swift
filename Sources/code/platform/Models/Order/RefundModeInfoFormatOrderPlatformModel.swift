

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundModeInfoFormat
        Used By: Order
    */

    class RefundModeInfoFormat: Codable {
        
        
        public var refundTo: String?
        
        public var manualRefundData: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundTo = "refund_to"
            
            case manualRefundData = "manual_refund_data"
            
        }

        public init(manualRefundData: [String: Any]? = nil, refundTo: String? = nil) {
            
            self.refundTo = refundTo
            
            self.manualRefundData = manualRefundData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundTo = try container.decode(String.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualRefundData = try container.decode([String: Any].self, forKey: .manualRefundData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
            
            
            try? container.encodeIfPresent(manualRefundData, forKey: .manualRefundData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundModeInfoFormat
        Used By: Order
    */

    class RefundModeInfoFormat: Codable {
        
        
        public var refundTo: String?
        
        public var manualRefundData: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundTo = "refund_to"
            
            case manualRefundData = "manual_refund_data"
            
        }

        public init(manualRefundData: [String: Any]? = nil, refundTo: String? = nil) {
            
            self.refundTo = refundTo
            
            self.manualRefundData = manualRefundData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundTo = try container.decode(String.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualRefundData = try container.decode([String: Any].self, forKey: .manualRefundData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
            
            
            try? container.encodeIfPresent(manualRefundData, forKey: .manualRefundData)
            
            
        }
        
    }
}


