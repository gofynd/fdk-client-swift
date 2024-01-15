

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectEntry
        Used By: Content
    */

    class CustomObjectEntry: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var updatedAt: String?
        
        public var entriesCount: Int?
        
        public var fieldsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case type = "type"
            
            case updatedAt = "updated_at"
            
            case entriesCount = "entries_count"
            
            case fieldsCount = "fields_count"
            
        }

        public init(entriesCount: Int? = nil, fieldsCount: Int? = nil, name: String? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.updatedAt = updatedAt
            
            self.entriesCount = entriesCount
            
            self.fieldsCount = fieldsCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entriesCount = try container.decode(Int.self, forKey: .entriesCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldsCount = try container.decode(Int.self, forKey: .fieldsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(entriesCount, forKey: .entriesCount)
            
            
            
            
            try? container.encodeIfPresent(fieldsCount, forKey: .fieldsCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectEntry
        Used By: Content
    */

    class CustomObjectEntry: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var updatedAt: String?
        
        public var entriesCount: Int?
        
        public var fieldsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case type = "type"
            
            case updatedAt = "updated_at"
            
            case entriesCount = "entries_count"
            
            case fieldsCount = "fields_count"
            
        }

        public init(entriesCount: Int? = nil, fieldsCount: Int? = nil, name: String? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.updatedAt = updatedAt
            
            self.entriesCount = entriesCount
            
            self.fieldsCount = fieldsCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entriesCount = try container.decode(Int.self, forKey: .entriesCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldsCount = try container.decode(Int.self, forKey: .fieldsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(entriesCount, forKey: .entriesCount)
            
            
            
            
            try? container.encodeIfPresent(fieldsCount, forKey: .fieldsCount)
            
            
        }
        
    }
}


