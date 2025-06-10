

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageChannel
        Used By: Serviceability
    */

    class PackageChannel: Codable {
        
        
        public var storeFilter: StoreFilter?
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeFilter = "store_filter"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, storeFilter: StoreFilter? = nil) {
            
            self.storeFilter = storeFilter
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeFilter = try container.decode(StoreFilter.self, forKey: .storeFilter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeFilter, forKey: .storeFilter)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageChannel
        Used By: Serviceability
    */

    class PackageChannel: Codable {
        
        
        public var storeFilter: StoreFilter?
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeFilter = "store_filter"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, storeFilter: StoreFilter? = nil) {
            
            self.storeFilter = storeFilter
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeFilter = try container.decode(StoreFilter.self, forKey: .storeFilter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeFilter, forKey: .storeFilter)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}


