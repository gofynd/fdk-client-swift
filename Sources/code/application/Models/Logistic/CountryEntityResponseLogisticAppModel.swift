

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: CountryEntityResponse
        Used By: Logistic
    */
    class CountryEntityResponse: Codable {
        
        public var meta: CountryMetaResponse?
        
        public var logistics: LogisticsResponse?
        
        public var displayName: String?
        
        public var type: String?
        
        public var isActive: Bool?
        
        public var parentId: String?
        
        public var subType: String?
        
        public var name: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case logistics = "logistics"
            
            case displayName = "display_name"
            
            case type = "type"
            
            case isActive = "is_active"
            
            case parentId = "parent_id"
            
            case subType = "sub_type"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, logistics: LogisticsResponse? = nil, meta: CountryMetaResponse? = nil, name: String? = nil, parentId: String? = nil, subType: String? = nil, type: String? = nil, uid: String? = nil) {
            
            self.meta = meta
            
            self.logistics = logistics
            
            self.displayName = displayName
            
            self.type = type
            
            self.isActive = isActive
            
            self.parentId = parentId
            
            self.subType = subType
            
            self.name = name
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(logistics, forKey: .logistics)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}
