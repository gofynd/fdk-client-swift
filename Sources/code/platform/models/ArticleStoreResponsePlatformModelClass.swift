

import Foundation
public extension PlatformClient {
    /*
        Model: ArticleStoreResponse
        Used By: Catalog
    */

    class ArticleStoreResponse: Codable {
        
        
        public var integrationType: StoreIntegrationType?
        
        public var uid: Int?
        
        public var storeType: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case integrationType = "integration_type"
            
            case uid = "uid"
            
            case storeType = "store_type"
            
            case name = "name"
            
        }

        public init(integrationType: StoreIntegrationType? = nil, name: String? = nil, storeType: String? = nil, uid: Int? = nil) {
            
            self.integrationType = integrationType
            
            self.uid = uid
            
            self.storeType = storeType
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    integrationType = try container.decode(StoreIntegrationType.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
