

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PostRefundStateConfigurationResponseSchema
        Used By: Order
    */

    class PostRefundStateConfigurationResponseSchema: Codable {
        
        
        public var refundConfig: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundConfig = "refund_config"
            
            case success = "success"
            
        }

        public init(refundConfig: String? = nil, success: Bool? = nil) {
            
            self.refundConfig = refundConfig
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundConfig = try container.decode(String.self, forKey: .refundConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundConfig, forKey: .refundConfig)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PostRefundStateConfigurationResponseSchema
        Used By: Order
    */

    class PostRefundStateConfigurationResponseSchema: Codable {
        
        
        public var refundConfig: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundConfig = "refund_config"
            
            case success = "success"
            
        }

        public init(refundConfig: String? = nil, success: Bool? = nil) {
            
            self.refundConfig = refundConfig
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundConfig = try container.decode(String.self, forKey: .refundConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundConfig, forKey: .refundConfig)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


