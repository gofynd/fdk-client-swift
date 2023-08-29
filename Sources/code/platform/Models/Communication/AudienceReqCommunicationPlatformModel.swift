

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: AudienceReq
        Used By: Communication
    */

    class AudienceReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var tags: [String]?
        
        public var fileUrl: String?
        
        public var type: String?
        
        public var recordsCount: Int?
        
        public var headers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case tags = "tags"
            
            case fileUrl = "file_url"
            
            case type = "type"
            
            case recordsCount = "records_count"
            
            case headers = "headers"
            
        }

        public init(description: String? = nil, fileUrl: String? = nil, headers: [String]? = nil, name: String? = nil, recordsCount: Int? = nil, tags: [String]? = nil, type: String? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.tags = tags
            
            self.fileUrl = fileUrl
            
            self.type = type
            
            self.recordsCount = recordsCount
            
            self.headers = headers
            
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
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
                    recordsCount = try container.decode(Int.self, forKey: .recordsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    headers = try container.decode([String].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(recordsCount, forKey: .recordsCount)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: AudienceReq
        Used By: Communication
    */

    class AudienceReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var tags: [String]?
        
        public var fileUrl: String?
        
        public var type: String?
        
        public var recordsCount: Int?
        
        public var headers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case tags = "tags"
            
            case fileUrl = "file_url"
            
            case type = "type"
            
            case recordsCount = "records_count"
            
            case headers = "headers"
            
        }

        public init(description: String? = nil, fileUrl: String? = nil, headers: [String]? = nil, name: String? = nil, recordsCount: Int? = nil, tags: [String]? = nil, type: String? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.tags = tags
            
            self.fileUrl = fileUrl
            
            self.type = type
            
            self.recordsCount = recordsCount
            
            self.headers = headers
            
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
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
                    recordsCount = try container.decode(Int.self, forKey: .recordsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    headers = try container.decode([String].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(recordsCount, forKey: .recordsCount)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
        }
        
    }
}


