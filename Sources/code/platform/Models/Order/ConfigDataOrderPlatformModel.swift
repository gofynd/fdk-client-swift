

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ConfigData
        Used By: Order
    */

    class ConfigData: Codable {
        
        
        public var acknowledged: Bool?
        
        public var isUpserted: Bool?
        
        public var isInserted: Bool?
        
        public var statusSyncConfig: StatusSyncConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case acknowledged = "acknowledged"
            
            case isUpserted = "is_upserted"
            
            case isInserted = "is_inserted"
            
            case statusSyncConfig = "status_sync_config"
            
        }

        public init(acknowledged: Bool? = nil, isInserted: Bool? = nil, isUpserted: Bool? = nil, statusSyncConfig: StatusSyncConfig? = nil) {
            
            self.acknowledged = acknowledged
            
            self.isUpserted = isUpserted
            
            self.isInserted = isInserted
            
            self.statusSyncConfig = statusSyncConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    acknowledged = try container.decode(Bool.self, forKey: .acknowledged)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isUpserted = try container.decode(Bool.self, forKey: .isUpserted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInserted = try container.decode(Bool.self, forKey: .isInserted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusSyncConfig = try container.decode(StatusSyncConfig.self, forKey: .statusSyncConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(acknowledged, forKey: .acknowledged)
            
            
            
            
            try? container.encodeIfPresent(isUpserted, forKey: .isUpserted)
            
            
            
            
            try? container.encodeIfPresent(isInserted, forKey: .isInserted)
            
            
            
            
            try? container.encodeIfPresent(statusSyncConfig, forKey: .statusSyncConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ConfigData
        Used By: Order
    */

    class ConfigData: Codable {
        
        
        public var acknowledged: Bool?
        
        public var isUpserted: Bool?
        
        public var isInserted: Bool?
        
        public var statusSyncConfig: StatusSyncConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case acknowledged = "acknowledged"
            
            case isUpserted = "is_upserted"
            
            case isInserted = "is_inserted"
            
            case statusSyncConfig = "status_sync_config"
            
        }

        public init(acknowledged: Bool? = nil, isInserted: Bool? = nil, isUpserted: Bool? = nil, statusSyncConfig: StatusSyncConfig? = nil) {
            
            self.acknowledged = acknowledged
            
            self.isUpserted = isUpserted
            
            self.isInserted = isInserted
            
            self.statusSyncConfig = statusSyncConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    acknowledged = try container.decode(Bool.self, forKey: .acknowledged)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isUpserted = try container.decode(Bool.self, forKey: .isUpserted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInserted = try container.decode(Bool.self, forKey: .isInserted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusSyncConfig = try container.decode(StatusSyncConfig.self, forKey: .statusSyncConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(acknowledged, forKey: .acknowledged)
            
            
            
            
            try? container.encodeIfPresent(isUpserted, forKey: .isUpserted)
            
            
            
            
            try? container.encodeIfPresent(isInserted, forKey: .isInserted)
            
            
            
            
            try? container.encodeIfPresent(statusSyncConfig, forKey: .statusSyncConfig)
            
            
        }
        
    }
}


