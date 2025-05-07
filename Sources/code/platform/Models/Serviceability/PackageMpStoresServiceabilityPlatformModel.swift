

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageMpStores
        Used By: Serviceability
    */

    class PackageMpStores: Codable {
        
        
        public var appName: String?
        
        public var appId: String?
        
        public var storeIds: [Int]?
        
        public var storeData: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case appName = "app_name"
            
            case appId = "app_id"
            
            case storeIds = "store_ids"
            
            case storeData = "store_data"
            
        }

        public init(appId: String? = nil, appName: String? = nil, storeData: [String: Any]? = nil, storeIds: [Int]? = nil) {
            
            self.appName = appName
            
            self.appId = appId
            
            self.storeIds = storeIds
            
            self.storeData = storeData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appName = try container.decode(String.self, forKey: .appName)
                
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
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeData = try container.decode([String: Any].self, forKey: .storeData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appName, forKey: .appName)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(storeData, forKey: .storeData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageMpStores
        Used By: Serviceability
    */

    class PackageMpStores: Codable {
        
        
        public var appName: String?
        
        public var appId: String?
        
        public var storeIds: [Int]?
        
        public var storeData: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case appName = "app_name"
            
            case appId = "app_id"
            
            case storeIds = "store_ids"
            
            case storeData = "store_data"
            
        }

        public init(appId: String? = nil, appName: String? = nil, storeData: [String: Any]? = nil, storeIds: [Int]? = nil) {
            
            self.appName = appName
            
            self.appId = appId
            
            self.storeIds = storeIds
            
            self.storeData = storeData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appName = try container.decode(String.self, forKey: .appName)
                
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
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeData = try container.decode([String: Any].self, forKey: .storeData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appName, forKey: .appName)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(storeData, forKey: .storeData)
            
            
        }
        
    }
}


