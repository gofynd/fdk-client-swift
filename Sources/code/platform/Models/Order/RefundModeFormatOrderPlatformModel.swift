

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundModeFormat
        Used By: Order
    */

    class RefundModeFormat: Codable {
        
        
        public var refundTo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundTo = "refund_to"
            
        }

        public init(refundTo: String? = nil) {
            
            self.refundTo = refundTo
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundModeFormat
        Used By: Order
    */

    class RefundModeFormat: Codable {
        
        
        public var refundTo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundTo = "refund_to"
            
        }

        public init(refundTo: String? = nil) {
            
            self.refundTo = refundTo
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
        }
        
    }
}


