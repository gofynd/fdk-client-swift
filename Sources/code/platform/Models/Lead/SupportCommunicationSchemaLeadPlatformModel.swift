

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: SupportCommunicationSchema
        Used By: Lead
    */

    class SupportCommunicationSchema: Codable {
        
        
        public var type: String?
        
        public var title: String?
        
        public var description: String?
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case title = "title"
            
            case description = "description"
            
            case enabled = "enabled"
            
        }

        public init(description: String? = nil, enabled: Bool? = nil, title: String? = nil, type: String? = nil) {
            
            self.type = type
            
            self.title = title
            
            self.description = description
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: SupportCommunicationSchema
        Used By: Lead
    */

    class SupportCommunicationSchema: Codable {
        
        
        public var type: String?
        
        public var title: String?
        
        public var description: String?
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case title = "title"
            
            case description = "description"
            
            case enabled = "enabled"
            
        }

        public init(description: String? = nil, enabled: Bool? = nil, title: String? = nil, type: String? = nil) {
            
            self.type = type
            
            self.title = title
            
            self.description = description
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}


