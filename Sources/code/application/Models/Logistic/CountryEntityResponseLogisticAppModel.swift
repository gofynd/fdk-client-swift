

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: CountryEntityResponse
        Used By: Logistic
    */
    class CountryEntityResponse: Codable {
        
        public var displayName: String?
        
        public var isActive: Bool?
        
        public var parentId: String?
        
        public var subType: String?
        
        public var name: String?
        
        public var uid: String?
        
        public var latLong: [String: Any]?
        
        public var meta: CountryMetaResponse?
        
        public var logistics: LogisticsResponse?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case isActive = "is_active"
            
            case parentId = "parent_id"
            
            case subType = "sub_type"
            
            case name = "name"
            
            case uid = "uid"
            
            case latLong = "lat_long"
            
            case meta = "meta"
            
            case logistics = "logistics"
            
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, latLong: [String: Any]? = nil, logistics: LogisticsResponse? = nil, meta: CountryMetaResponse? = nil, name: String? = nil, parentId: String? = nil, subType: String? = nil, uid: String? = nil) {
            
            self.displayName = displayName
            
            self.isActive = isActive
            
            self.parentId = parentId
            
            self.subType = subType
            
            self.name = name
            
            self.uid = uid
            
            self.latLong = latLong
            
            self.meta = meta
            
            self.logistics = logistics
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentId = try container.decode(String.self, forKey: .parentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                subType = try container.decode(String.self, forKey: .subType)
            
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
            
            
            
            do {
                uid = try container.decode(String.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latLong = try container.decode([String: Any].self, forKey: .latLong)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(CountryMetaResponse.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logistics = try container.decode(LogisticsResponse.self, forKey: .logistics)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(logistics, forKey: .logistics)
            
            
        }
        
    }
}
