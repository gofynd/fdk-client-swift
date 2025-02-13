

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: PlatformVersionRequest
        Used By: Configuration
    */

    class PlatformVersionRequest: Codable {
        
        
        public var appCodeName: String
        
        public var appName: String
        
        public var forceVersion: String
        
        public var latestVersion: String
        
        public var isAppBlocked: Bool
        
        public var updateDialog: UpdateDiealog
        

        public enum CodingKeys: String, CodingKey {
            
            case appCodeName = "app_code_name"
            
            case appName = "app_name"
            
            case forceVersion = "force_version"
            
            case latestVersion = "latest_version"
            
            case isAppBlocked = "is_app_blocked"
            
            case updateDialog = "update_dialog"
            
        }

        public init(appCodeName: String, appName: String, forceVersion: String, isAppBlocked: Bool, latestVersion: String, updateDialog: UpdateDiealog) {
            
            self.appCodeName = appCodeName
            
            self.appName = appName
            
            self.forceVersion = forceVersion
            
            self.latestVersion = latestVersion
            
            self.isAppBlocked = isAppBlocked
            
            self.updateDialog = updateDialog
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appCodeName = try container.decode(String.self, forKey: .appCodeName)
                
            
            
            
                appName = try container.decode(String.self, forKey: .appName)
                
            
            
            
                forceVersion = try container.decode(String.self, forKey: .forceVersion)
                
            
            
            
                latestVersion = try container.decode(String.self, forKey: .latestVersion)
                
            
            
            
                isAppBlocked = try container.decode(Bool.self, forKey: .isAppBlocked)
                
            
            
            
                updateDialog = try container.decode(UpdateDiealog.self, forKey: .updateDialog)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appCodeName, forKey: .appCodeName)
            
            
            
            
            try? container.encodeIfPresent(appName, forKey: .appName)
            
            
            
            
            try? container.encodeIfPresent(forceVersion, forKey: .forceVersion)
            
            
            
            
            try? container.encodeIfPresent(latestVersion, forKey: .latestVersion)
            
            
            
            
            try? container.encodeIfPresent(isAppBlocked, forKey: .isAppBlocked)
            
            
            
            
            try? container.encodeIfPresent(updateDialog, forKey: .updateDialog)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: PlatformVersionRequest
        Used By: Configuration
    */

    class PlatformVersionRequest: Codable {
        
        
        public var appCodeName: String
        
        public var appName: String
        
        public var forceVersion: String
        
        public var latestVersion: String
        
        public var isAppBlocked: Bool
        
        public var updateDialog: UpdateDiealog
        

        public enum CodingKeys: String, CodingKey {
            
            case appCodeName = "app_code_name"
            
            case appName = "app_name"
            
            case forceVersion = "force_version"
            
            case latestVersion = "latest_version"
            
            case isAppBlocked = "is_app_blocked"
            
            case updateDialog = "update_dialog"
            
        }

        public init(appCodeName: String, appName: String, forceVersion: String, isAppBlocked: Bool, latestVersion: String, updateDialog: UpdateDiealog) {
            
            self.appCodeName = appCodeName
            
            self.appName = appName
            
            self.forceVersion = forceVersion
            
            self.latestVersion = latestVersion
            
            self.isAppBlocked = isAppBlocked
            
            self.updateDialog = updateDialog
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appCodeName = try container.decode(String.self, forKey: .appCodeName)
                
            
            
            
                appName = try container.decode(String.self, forKey: .appName)
                
            
            
            
                forceVersion = try container.decode(String.self, forKey: .forceVersion)
                
            
            
            
                latestVersion = try container.decode(String.self, forKey: .latestVersion)
                
            
            
            
                isAppBlocked = try container.decode(Bool.self, forKey: .isAppBlocked)
                
            
            
            
                updateDialog = try container.decode(UpdateDiealog.self, forKey: .updateDialog)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appCodeName, forKey: .appCodeName)
            
            
            
            
            try? container.encodeIfPresent(appName, forKey: .appName)
            
            
            
            
            try? container.encodeIfPresent(forceVersion, forKey: .forceVersion)
            
            
            
            
            try? container.encodeIfPresent(latestVersion, forKey: .latestVersion)
            
            
            
            
            try? container.encodeIfPresent(isAppBlocked, forKey: .isAppBlocked)
            
            
            
            
            try? container.encodeIfPresent(updateDialog, forKey: .updateDialog)
            
            
        }
        
    }
}


