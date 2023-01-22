

import Foundation
public extension PlatformClient {
    /*
        Model: CategoryMapping
        Used By: Catalog
    */

    class CategoryMapping: Codable {
        
        
        public var google: CategoryMappingValues?
        
        public var ajio: CategoryMappingValues?
        
        public var facebook: CategoryMappingValues?
        

        public enum CodingKeys: String, CodingKey {
            
            case google = "google"
            
            case ajio = "ajio"
            
            case facebook = "facebook"
            
        }

        public init(ajio: CategoryMappingValues? = nil, facebook: CategoryMappingValues? = nil, google: CategoryMappingValues? = nil) {
            
            self.google = google
            
            self.ajio = ajio
            
            self.facebook = facebook
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    google = try container.decode(CategoryMappingValues.self, forKey: .google)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ajio = try container.decode(CategoryMappingValues.self, forKey: .ajio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    facebook = try container.decode(CategoryMappingValues.self, forKey: .facebook)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(google, forKey: .google)
            
            
            
            
            try? container.encodeIfPresent(ajio, forKey: .ajio)
            
            
            
            
            try? container.encodeIfPresent(facebook, forKey: .facebook)
            
            
        }
        
    }
}
