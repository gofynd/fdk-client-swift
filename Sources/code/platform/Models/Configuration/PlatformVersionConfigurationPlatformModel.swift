

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: PlatformVersion
        Used By: Configuration
    */

    class PlatformVersion: Codable {
        
        
        public var appCodeName: String
        
        public var appName: String
        
        public var forceVersion: String
        
        public var latestVersion: String
        
        public var isAppBlocked: Bool
        
        public var updateDialog: UpdateDiealog
        
        public var id: String?
        
        public var modifiedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case appCodeName = "app_code_name"
            
            case appName = "app_name"
            
            case forceVersion = "force_version"
            
            case latestVersion = "latest_version"
            
            case isAppBlocked = "is_app_blocked"
            
            case updateDialog = "update_dialog"
            
            case id = "_id"
            
            case modifiedAt = "modified_at"
            
            case createdAt = "created_at"
            
            case v = "__v"
            
        }

        public init(appCodeName: String, appName: String, createdAt: String? = nil, forceVersion: String, isAppBlocked: Bool, latestVersion: String, modifiedAt: String? = nil, updateDialog: UpdateDiealog, id: String? = nil, v: Double? = nil) {
            
            self.appCodeName = appCodeName
            
            self.appName = appName
            
            self.forceVersion = forceVersion
            
            self.latestVersion = latestVersion
            
            self.isAppBlocked = isAppBlocked
            
            self.updateDialog = updateDialog
            
            self.id = id
            
            self.modifiedAt = modifiedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appCodeName = try container.decode(String.self, forKey: .appCodeName)
                
            
            
            
                appName = try container.decode(String.self, forKey: .appName)
                
            
            
            
                forceVersion = try container.decode(String.self, forKey: .forceVersion)
                
            
            
            
                latestVersion = try container.decode(String.self, forKey: .latestVersion)
                
            
            
            
                isAppBlocked = try container.decode(Bool.self, forKey: .isAppBlocked)
                
            
            
            
                updateDialog = try container.decode(UpdateDiealog.self, forKey: .updateDialog)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
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
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appCodeName, forKey: .appCodeName)
            
            
            
            
            try? container.encodeIfPresent(appName, forKey: .appName)
            
            
            
            
            try? container.encodeIfPresent(forceVersion, forKey: .forceVersion)
            
            
            
            
            try? container.encodeIfPresent(latestVersion, forKey: .latestVersion)
            
            
            
            
            try? container.encodeIfPresent(isAppBlocked, forKey: .isAppBlocked)
            
            
            
            
            try? container.encodeIfPresent(updateDialog, forKey: .updateDialog)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: PlatformVersion
        Used By: Configuration
    */

    class PlatformVersion: Codable {
        
        
        public var appCodeName: String
        
        public var appName: String
        
        public var forceVersion: String
        
        public var latestVersion: String
        
        public var isAppBlocked: Bool
        
        public var updateDialog: UpdateDiealog
        
        public var id: String?
        
        public var modifiedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case appCodeName = "app_code_name"
            
            case appName = "app_name"
            
            case forceVersion = "force_version"
            
            case latestVersion = "latest_version"
            
            case isAppBlocked = "is_app_blocked"
            
            case updateDialog = "update_dialog"
            
            case id = "_id"
            
            case modifiedAt = "modified_at"
            
            case createdAt = "created_at"
            
            case v = "__v"
            
        }

        public init(appCodeName: String, appName: String, createdAt: String? = nil, forceVersion: String, isAppBlocked: Bool, latestVersion: String, modifiedAt: String? = nil, updateDialog: UpdateDiealog, id: String? = nil, v: Double? = nil) {
            
            self.appCodeName = appCodeName
            
            self.appName = appName
            
            self.forceVersion = forceVersion
            
            self.latestVersion = latestVersion
            
            self.isAppBlocked = isAppBlocked
            
            self.updateDialog = updateDialog
            
            self.id = id
            
            self.modifiedAt = modifiedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appCodeName = try container.decode(String.self, forKey: .appCodeName)
                
            
            
            
                appName = try container.decode(String.self, forKey: .appName)
                
            
            
            
                forceVersion = try container.decode(String.self, forKey: .forceVersion)
                
            
            
            
                latestVersion = try container.decode(String.self, forKey: .latestVersion)
                
            
            
            
                isAppBlocked = try container.decode(Bool.self, forKey: .isAppBlocked)
                
            
            
            
                updateDialog = try container.decode(UpdateDiealog.self, forKey: .updateDialog)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
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
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appCodeName, forKey: .appCodeName)
            
            
            
            
            try? container.encodeIfPresent(appName, forKey: .appName)
            
            
            
            
            try? container.encodeIfPresent(forceVersion, forKey: .forceVersion)
            
            
            
            
            try? container.encodeIfPresent(latestVersion, forKey: .latestVersion)
            
            
            
            
            try? container.encodeIfPresent(isAppBlocked, forKey: .isAppBlocked)
            
            
            
            
            try? container.encodeIfPresent(updateDialog, forKey: .updateDialog)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


