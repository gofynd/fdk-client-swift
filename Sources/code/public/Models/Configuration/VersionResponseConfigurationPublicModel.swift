

import Foundation
public extension PublicClient.Configuration {
    /*
        Model: VersionResponse
        Used By: Configuration
    */

    class VersionResponse: Codable {
        
        
        public var type: String
        
        public var title: String
        
        public var description: String
        
        public var updateDialog: VersionUpdateDialogue
        
        public var isAppBlocked: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case title = "title"
            
            case description = "description"
            
            case updateDialog = "update_dialog"
            
            case isAppBlocked = "is_app_blocked"
            
        }

        public init(description: String, isAppBlocked: Bool, title: String, type: String, updateDialog: VersionUpdateDialogue) {
            
            self.type = type
            
            self.title = title
            
            self.description = description
            
            self.updateDialog = updateDialog
            
            self.isAppBlocked = isAppBlocked
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                updateDialog = try container.decode(VersionUpdateDialogue.self, forKey: .updateDialog)
                
            
            
            
                isAppBlocked = try container.decode(Bool.self, forKey: .isAppBlocked)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(updateDialog, forKey: .updateDialog)
            
            
            
            try? container.encodeIfPresent(isAppBlocked, forKey: .isAppBlocked)
            
            
        }
        
    }
}
