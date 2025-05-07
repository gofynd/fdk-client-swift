

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: UpdateDomain
        Used By: Configuration
    */

    class UpdateDomain: Codable {
        
        
        public var name: String?
        
        public var displayName: String?
        
        public var id: String?
        
        public var verified: Bool?
        
        public var isPrimary: Bool?
        
        public var isShortlink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case displayName = "display_name"
            
            case id = "_id"
            
            case verified = "verified"
            
            case isPrimary = "is_primary"
            
            case isShortlink = "is_shortlink"
            
        }

        public init(displayName: String? = nil, isPrimary: Bool? = nil, isShortlink: Bool? = nil, name: String? = nil, verified: Bool? = nil, id: String? = nil) {
            
            self.name = name
            
            self.displayName = displayName
            
            self.id = id
            
            self.verified = verified
            
            self.isPrimary = isPrimary
            
            self.isShortlink = isShortlink
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrimary = try container.decode(Bool.self, forKey: .isPrimary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isShortlink = try container.decode(Bool.self, forKey: .isShortlink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)
            
            
            
            
            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: UpdateDomain
        Used By: Configuration
    */

    class UpdateDomain: Codable {
        
        
        public var name: String?
        
        public var displayName: String?
        
        public var id: String?
        
        public var verified: Bool?
        
        public var isPrimary: Bool?
        
        public var isShortlink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case displayName = "display_name"
            
            case id = "_id"
            
            case verified = "verified"
            
            case isPrimary = "is_primary"
            
            case isShortlink = "is_shortlink"
            
        }

        public init(displayName: String? = nil, isPrimary: Bool? = nil, isShortlink: Bool? = nil, name: String? = nil, verified: Bool? = nil, id: String? = nil) {
            
            self.name = name
            
            self.displayName = displayName
            
            self.id = id
            
            self.verified = verified
            
            self.isPrimary = isPrimary
            
            self.isShortlink = isShortlink
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrimary = try container.decode(Bool.self, forKey: .isPrimary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isShortlink = try container.decode(Bool.self, forKey: .isShortlink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)
            
            
            
            
            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)
            
            
        }
        
    }
}


