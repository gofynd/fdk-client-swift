

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ConfigDpConfiguration
        Used By: Order
    */

    class ConfigDpConfiguration: Codable {
        
        
        public var shippingBy: String?
        
        public var refundBy: String?
        
        public var mode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shippingBy = "shipping_by"
            
            case refundBy = "refund_by"
            
            case mode = "mode"
            
        }

        public init(mode: String? = nil, refundBy: String? = nil, shippingBy: String? = nil) {
            
            self.shippingBy = shippingBy
            
            self.refundBy = refundBy
            
            self.mode = mode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shippingBy = try container.decode(String.self, forKey: .shippingBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundBy = try container.decode(String.self, forKey: .refundBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ConfigDpConfiguration
        Used By: Order
    */

    class ConfigDpConfiguration: Codable {
        
        
        public var shippingBy: String?
        
        public var refundBy: String?
        
        public var mode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shippingBy = "shipping_by"
            
            case refundBy = "refund_by"
            
            case mode = "mode"
            
        }

        public init(mode: String? = nil, refundBy: String? = nil, shippingBy: String? = nil) {
            
            self.shippingBy = shippingBy
            
            self.refundBy = refundBy
            
            self.mode = mode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shippingBy = try container.decode(String.self, forKey: .shippingBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundBy = try container.decode(String.self, forKey: .refundBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
        }
        
    }
}


