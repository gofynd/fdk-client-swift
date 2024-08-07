

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: GetExtensionSectionRes
        Used By: Theme
    */

    class GetExtensionSectionRes: Codable {
        
        
        public var extensionId: String?
        
        public var bundleName: String?
        
        public var organizationId: String?
        
        public var sections: [ExtensionSection]?
        
        public var assets: AssetsExtension?
        
        public var status: String?
        
        public var type: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case bundleName = "bundle_name"
            
            case organizationId = "organization_id"
            
            case sections = "sections"
            
            case assets = "assets"
            
            case status = "status"
            
            case type = "type"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(assets: AssetsExtension? = nil, bundleName: String? = nil, createdAt: String? = nil, extensionId: String? = nil, organizationId: String? = nil, sections: [ExtensionSection]? = nil, status: String? = nil, type: String? = nil, updatedAt: String? = nil) {
            
            self.extensionId = extensionId
            
            self.bundleName = bundleName
            
            self.organizationId = organizationId
            
            self.sections = sections
            
            self.assets = assets
            
            self.status = status
            
            self.type = type
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundleName = try container.decode(String.self, forKey: .bundleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sections = try container.decode([ExtensionSection].self, forKey: .sections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assets = try container.decode(AssetsExtension.self, forKey: .assets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(bundleName, forKey: .bundleName)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            
            
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: GetExtensionSectionRes
        Used By: Theme
    */

    class GetExtensionSectionRes: Codable {
        
        
        public var extensionId: String?
        
        public var bundleName: String?
        
        public var organizationId: String?
        
        public var sections: [ExtensionSection]?
        
        public var assets: AssetsExtension?
        
        public var status: String?
        
        public var type: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case bundleName = "bundle_name"
            
            case organizationId = "organization_id"
            
            case sections = "sections"
            
            case assets = "assets"
            
            case status = "status"
            
            case type = "type"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(assets: AssetsExtension? = nil, bundleName: String? = nil, createdAt: String? = nil, extensionId: String? = nil, organizationId: String? = nil, sections: [ExtensionSection]? = nil, status: String? = nil, type: String? = nil, updatedAt: String? = nil) {
            
            self.extensionId = extensionId
            
            self.bundleName = bundleName
            
            self.organizationId = organizationId
            
            self.sections = sections
            
            self.assets = assets
            
            self.status = status
            
            self.type = type
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundleName = try container.decode(String.self, forKey: .bundleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sections = try container.decode([ExtensionSection].self, forKey: .sections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assets = try container.decode(AssetsExtension.self, forKey: .assets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(bundleName, forKey: .bundleName)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            
            
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


