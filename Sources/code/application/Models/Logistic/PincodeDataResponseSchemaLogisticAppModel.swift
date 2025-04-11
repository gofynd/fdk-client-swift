

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PincodeDataResponseSchema
        Used By: Logistic
    */
    class PincodeDataResponseSchema: Codable {
        
        public var parents: [PincodeParentsResponseSchema]?
        
        public var meta: PincodeMetaResponseSchema?
        
        public var displayName: String?
        
        public var error: PincodeErrorResponseSchema
        
        public var metaCode: CountryMetaResponseSchema?
        
        public var latLong: PincodeLatLongData?
        
        public var subType: String?
        
        public var name: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case parents = "parents"
            
            case meta = "meta"
            
            case displayName = "display_name"
            
            case error = "error"
            
            case metaCode = "meta_code"
            
            case latLong = "lat_long"
            
            case subType = "sub_type"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(displayName: String? = nil, error: PincodeErrorResponseSchema, latLong: PincodeLatLongData? = nil, meta: PincodeMetaResponseSchema? = nil, metaCode: CountryMetaResponseSchema? = nil, name: String? = nil, parents: [PincodeParentsResponseSchema]? = nil, subType: String? = nil, uid: String? = nil) {
            
            self.parents = parents
            
            self.meta = meta
            
            self.displayName = displayName
            
            self.error = error
            
            self.metaCode = metaCode
            
            self.latLong = latLong
            
            self.subType = subType
            
            self.name = name
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                parents = try container.decode([PincodeParentsResponseSchema].self, forKey: .parents)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(PincodeMetaResponseSchema.self, forKey: .meta)
            
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
            
            
            
            error = try container.decode(PincodeErrorResponseSchema.self, forKey: .error)
            
            
            
            
            do {
                metaCode = try container.decode(CountryMetaResponseSchema.self, forKey: .metaCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latLong = try container.decode(PincodeLatLongData.self, forKey: .latLong)
            
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
            
            
            try? container.encodeIfPresent(parents, forKey: .parents)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(metaCode, forKey: .metaCode)
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}
