

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GetRefundStateConfigurationResponseSchema
        Used By: Order
    */

    class GetRefundStateConfigurationResponseSchema: Codable {
        
        
        public var success: Bool?
        
        public var config: PostRefundStateConfiguration?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case config = "config"
            
        }

        public init(config: PostRefundStateConfiguration? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(PostRefundStateConfiguration.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GetRefundStateConfigurationResponseSchema
        Used By: Order
    */

    class GetRefundStateConfigurationResponseSchema: Codable {
        
        
        public var success: Bool?
        
        public var config: PostRefundStateConfiguration?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case config = "config"
            
        }

        public init(config: PostRefundStateConfiguration? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(PostRefundStateConfiguration.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}


