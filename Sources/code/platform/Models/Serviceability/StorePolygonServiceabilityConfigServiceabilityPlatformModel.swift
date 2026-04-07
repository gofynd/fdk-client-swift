

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityConfig
        Used By: Serviceability
    */

    class StorePolygonServiceabilityConfig: Codable {
        
        
        public var name: String
        
        public var serviceabilityType: String
        
        public var polygon: StorePolygonServiceabilityPolygon
        
        public var meta: [String: Any]?
        
        public var isActive: Bool
        
        public var uid: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case serviceabilityType = "serviceability_type"
            
            case polygon = "polygon"
            
            case meta = "meta"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(createdAt: String? = nil, isActive: Bool, meta: [String: Any]? = nil, name: String, polygon: StorePolygonServiceabilityPolygon, serviceabilityType: String, uid: String? = nil, updatedAt: String? = nil) {
            
            self.name = name
            
            self.serviceabilityType = serviceabilityType
            
            self.polygon = polygon
            
            self.meta = meta
            
            self.isActive = isActive
            
            self.uid = uid
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                polygon = try container.decode(StorePolygonServiceabilityPolygon.self, forKey: .polygon)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(polygon, forKey: .polygon)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityConfig
        Used By: Serviceability
    */

    class StorePolygonServiceabilityConfig: Codable {
        
        
        public var name: String
        
        public var serviceabilityType: String
        
        public var polygon: StorePolygonServiceabilityPolygon
        
        public var meta: [String: Any]?
        
        public var isActive: Bool
        
        public var uid: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case serviceabilityType = "serviceability_type"
            
            case polygon = "polygon"
            
            case meta = "meta"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(createdAt: String? = nil, isActive: Bool, meta: [String: Any]? = nil, name: String, polygon: StorePolygonServiceabilityPolygon, serviceabilityType: String, uid: String? = nil, updatedAt: String? = nil) {
            
            self.name = name
            
            self.serviceabilityType = serviceabilityType
            
            self.polygon = polygon
            
            self.meta = meta
            
            self.isActive = isActive
            
            self.uid = uid
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                polygon = try container.decode(StorePolygonServiceabilityPolygon.self, forKey: .polygon)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(polygon, forKey: .polygon)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


