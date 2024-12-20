

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MetaDataListingSortMetaResponseSchema
        Used By: Catalog
    */

    class MetaDataListingSortMetaResponseSchema: Codable {
        
        
        public var display: String?
        
        public var key: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case key = "key"
            
        }

        public init(display: String? = nil, key: String? = nil) {
            
            self.display = display
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MetaDataListingSortMetaResponseSchema
        Used By: Catalog
    */

    class MetaDataListingSortMetaResponseSchema: Codable {
        
        
        public var display: String?
        
        public var key: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case key = "key"
            
        }

        public init(display: String? = nil, key: String? = nil) {
            
            self.display = display
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}


