

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PackagesResponseSchema
        Used By: Order
    */

    class PackagesResponseSchema: Codable {
        
        
        public var success: Bool
        
        public var data: PackagesSchema
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case message = "message"
            
        }

        public init(data: PackagesSchema, message: String? = nil, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode(PackagesSchema.self, forKey: .data)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PackagesResponseSchema
        Used By: Order
    */

    class PackagesResponseSchema: Codable {
        
        
        public var success: Bool
        
        public var data: PackagesSchema
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case message = "message"
            
        }

        public init(data: PackagesSchema, message: String? = nil, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode(PackagesSchema.self, forKey: .data)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


