

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityStore
        Used By: Serviceability
    */

    class StorePolygonServiceabilityStore: Codable {
        
        
        public var storeCode: String
        
        public var name: String
        
        public var address: String
        
        public var areaCode: String
        
        public var isActive: Bool
        
        public var meta: [String: Any]?
        
        public var coordinates: StorePolygonServiceabilityStoreCoordinates
        
        public var serviceabilities: [StorePolygonServiceabilityConfig]
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCode = "store_code"
            
            case name = "name"
            
            case address = "address"
            
            case areaCode = "area_code"
            
            case isActive = "is_active"
            
            case meta = "meta"
            
            case coordinates = "coordinates"
            
            case serviceabilities = "serviceabilities"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(address: String, areaCode: String, coordinates: StorePolygonServiceabilityStoreCoordinates, createdAt: String? = nil, isActive: Bool, meta: [String: Any]? = nil, name: String, serviceabilities: [StorePolygonServiceabilityConfig], storeCode: String, updatedAt: String? = nil) {
            
            self.storeCode = storeCode
            
            self.name = name
            
            self.address = address
            
            self.areaCode = areaCode
            
            self.isActive = isActive
            
            self.meta = meta
            
            self.coordinates = coordinates
            
            self.serviceabilities = serviceabilities
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                coordinates = try container.decode(StorePolygonServiceabilityStoreCoordinates.self, forKey: .coordinates)
                
            
            
            
                serviceabilities = try container.decode([StorePolygonServiceabilityConfig].self, forKey: .serviceabilities)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
            
            
            
            
            try? container.encodeIfPresent(serviceabilities, forKey: .serviceabilities)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityStore
        Used By: Serviceability
    */

    class StorePolygonServiceabilityStore: Codable {
        
        
        public var storeCode: String
        
        public var name: String
        
        public var address: String
        
        public var areaCode: String
        
        public var isActive: Bool
        
        public var meta: [String: Any]?
        
        public var coordinates: StorePolygonServiceabilityStoreCoordinates
        
        public var serviceabilities: [StorePolygonServiceabilityConfig]
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCode = "store_code"
            
            case name = "name"
            
            case address = "address"
            
            case areaCode = "area_code"
            
            case isActive = "is_active"
            
            case meta = "meta"
            
            case coordinates = "coordinates"
            
            case serviceabilities = "serviceabilities"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(address: String, areaCode: String, coordinates: StorePolygonServiceabilityStoreCoordinates, createdAt: String? = nil, isActive: Bool, meta: [String: Any]? = nil, name: String, serviceabilities: [StorePolygonServiceabilityConfig], storeCode: String, updatedAt: String? = nil) {
            
            self.storeCode = storeCode
            
            self.name = name
            
            self.address = address
            
            self.areaCode = areaCode
            
            self.isActive = isActive
            
            self.meta = meta
            
            self.coordinates = coordinates
            
            self.serviceabilities = serviceabilities
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                coordinates = try container.decode(StorePolygonServiceabilityStoreCoordinates.self, forKey: .coordinates)
                
            
            
            
                serviceabilities = try container.decode([StorePolygonServiceabilityConfig].self, forKey: .serviceabilities)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
            
            
            
            
            try? container.encodeIfPresent(serviceabilities, forKey: .serviceabilities)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


