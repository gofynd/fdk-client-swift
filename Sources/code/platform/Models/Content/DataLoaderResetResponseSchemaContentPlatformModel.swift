

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DataLoaderResetResponseSchema
        Used By: Content
    */

    class DataLoaderResetResponseSchema: Codable {
        
        
        public var resetted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case resetted = "resetted"
            
        }

        public init(resetted: Bool? = nil) {
            
            self.resetted = resetted
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    resetted = try container.decode(Bool.self, forKey: .resetted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resetted, forKey: .resetted)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DataLoaderResetResponseSchema
        Used By: Content
    */

    class DataLoaderResetResponseSchema: Codable {
        
        
        public var resetted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case resetted = "resetted"
            
        }

        public init(resetted: Bool? = nil) {
            
            self.resetted = resetted
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    resetted = try container.decode(Bool.self, forKey: .resetted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resetted, forKey: .resetted)
            
            
        }
        
    }
}


