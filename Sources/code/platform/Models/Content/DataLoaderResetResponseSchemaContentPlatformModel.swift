

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DataLoaderResetResponseSchema
        Used By: Content
    */

    class DataLoaderResetResponseSchema: Codable {
        
        
        public var reset: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case reset = "reset"
            
        }

        public init(reset: Bool? = nil) {
            
            self.reset = reset
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reset = try container.decode(Bool.self, forKey: .reset)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reset, forKey: .reset)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DataLoaderResetResponseSchema
        Used By: Content
    */

    class DataLoaderResetResponseSchema: Codable {
        
        
        public var reset: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case reset = "reset"
            
        }

        public init(reset: Bool? = nil) {
            
            self.reset = reset
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reset = try container.decode(Bool.self, forKey: .reset)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reset, forKey: .reset)
            
            
        }
        
    }
}


