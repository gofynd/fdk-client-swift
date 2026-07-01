

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PincodeData
        Used By: Logistic
    */
    class PincodeData: Codable {
        
        public var parents: [PincodeParentsResult]?
        
        public var meta: PincodeMetaResult?
        
        public var displayName: String?
        
        public var error: PincodeErrorSchemaResult
        
        public var metaCode: CountryMeta?
        
        public var latLong: PincodesLatLongData?
        
        public var localities: [LocalityParent]?
        
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
            
            case localities = "localities"
            
            case subType = "sub_type"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(displayName: String? = nil, error: PincodeErrorSchemaResult, latLong: PincodesLatLongData? = nil, localities: [LocalityParent]? = nil, meta: PincodeMetaResult? = nil, metaCode: CountryMeta? = nil, name: String? = nil, parents: [PincodeParentsResult]? = nil, subType: String? = nil, uid: String? = nil) {
            
            self.parents = parents
            
            self.meta = meta
            
            self.displayName = displayName
            
            self.error = error
            
            self.metaCode = metaCode
            
            self.latLong = latLong
            
            self.localities = localities
            
            self.subType = subType
            
            self.name = name
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                parents = try container.decode([PincodeParentsResult].self, forKey: .parents)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(PincodeMetaResult.self, forKey: .meta)
            
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
            
            
            
            error = try container.decode(PincodeErrorSchemaResult.self, forKey: .error)
            
            
            
            
            do {
                metaCode = try container.decode(CountryMeta.self, forKey: .metaCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latLong = try container.decode(PincodesLatLongData.self, forKey: .latLong)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                localities = try container.decode([LocalityParent].self, forKey: .localities)
            
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
            
            
            
            try? container.encodeIfPresent(localities, forKey: .localities)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}
