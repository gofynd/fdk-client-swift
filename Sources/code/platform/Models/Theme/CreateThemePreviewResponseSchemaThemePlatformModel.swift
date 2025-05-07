

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: CreateThemePreviewResponseSchema
        Used By: Theme
    */

    class CreateThemePreviewResponseSchema: Codable {
        
        
        public var success: Bool?
        
        public var hashKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case hashKey = "hash_key"
            
        }

        public init(hashKey: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.hashKey = hashKey
            
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
                    hashKey = try container.decode(String.self, forKey: .hashKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: CreateThemePreviewResponseSchema
        Used By: Theme
    */

    class CreateThemePreviewResponseSchema: Codable {
        
        
        public var success: Bool?
        
        public var hashKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case hashKey = "hash_key"
            
        }

        public init(hashKey: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.hashKey = hashKey
            
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
                    hashKey = try container.decode(String.self, forKey: .hashKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            
        }
        
    }
}


