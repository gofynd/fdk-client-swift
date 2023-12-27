

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: ExtensionSlug
        Used By: FileStorage
    */

    class ExtensionSlug: Codable {
        
        
        public var extensionSlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionSlug = "extension_slug"
            
        }

        public init(extensionSlug: String? = nil) {
            
            self.extensionSlug = extensionSlug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extensionSlug = try container.decode(String.self, forKey: .extensionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionSlug, forKey: .extensionSlug)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: ExtensionSlug
        Used By: FileStorage
    */

    class ExtensionSlug: Codable {
        
        
        public var extensionSlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionSlug = "extension_slug"
            
        }

        public init(extensionSlug: String? = nil) {
            
            self.extensionSlug = extensionSlug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extensionSlug = try container.decode(String.self, forKey: .extensionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionSlug, forKey: .extensionSlug)
            
            
        }
        
    }
}


