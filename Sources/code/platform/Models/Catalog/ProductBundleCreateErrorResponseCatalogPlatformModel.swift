

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductBundleCreateErrorResponse
        Used By: Catalog
    */

    class ProductBundleCreateErrorResponse: Codable {
        
        
        public var error: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [String: Any]? = nil) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductBundleCreateErrorResponse
        Used By: Catalog
    */

    class ProductBundleCreateErrorResponse: Codable {
        
        
        public var error: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [String: Any]? = nil) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


