

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductConfigurationDownloads
        Used By: Catalog
    */

    class ProductConfigurationDownloads: Codable {
        
        
        public var multivalue: Bool?
        
        public var data: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case multivalue = "multivalue"
            
            case data = "data"
            
        }

        public init(data: [[String: Any]]? = nil, multivalue: Bool? = nil) {
            
            self.multivalue = multivalue
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    multivalue = try container.decode(Bool.self, forKey: .multivalue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([[String: Any]].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(multivalue, forKey: .multivalue)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductConfigurationDownloads
        Used By: Catalog
    */

    class ProductConfigurationDownloads: Codable {
        
        
        public var multivalue: Bool?
        
        public var data: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case multivalue = "multivalue"
            
            case data = "data"
            
        }

        public init(data: [[String: Any]]? = nil, multivalue: Bool? = nil) {
            
            self.multivalue = multivalue
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    multivalue = try container.decode(Bool.self, forKey: .multivalue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([[String: Any]].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(multivalue, forKey: .multivalue)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


