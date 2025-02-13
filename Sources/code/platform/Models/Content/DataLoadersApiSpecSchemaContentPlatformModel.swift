

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DataLoadersApiSpecSchema
        Used By: Content
    */

    class DataLoadersApiSpecSchema: Codable {
        
        
        public var info: [String: Any]?
        
        public var servers: [ServerSchema]?
        
        public var tags: [TagSpecSchema]?
        
        public var openapi: String?
        
        public var paths: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case info = "info"
            
            case servers = "servers"
            
            case tags = "tags"
            
            case openapi = "openapi"
            
            case paths = "paths"
            
        }

        public init(info: [String: Any]? = nil, openapi: String? = nil, paths: [String: Any]? = nil, servers: [ServerSchema]? = nil, tags: [TagSpecSchema]? = nil) {
            
            self.info = info
            
            self.servers = servers
            
            self.tags = tags
            
            self.openapi = openapi
            
            self.paths = paths
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    info = try container.decode([String: Any].self, forKey: .info)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    servers = try container.decode([ServerSchema].self, forKey: .servers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([TagSpecSchema].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    openapi = try container.decode(String.self, forKey: .openapi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paths = try container.decode([String: Any].self, forKey: .paths)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            
            try? container.encodeIfPresent(servers, forKey: .servers)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(openapi, forKey: .openapi)
            
            
            
            
            try? container.encodeIfPresent(paths, forKey: .paths)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DataLoadersApiSpecSchema
        Used By: Content
    */

    class DataLoadersApiSpecSchema: Codable {
        
        
        public var info: [String: Any]?
        
        public var servers: [ServerSchema]?
        
        public var tags: [TagSpecSchema]?
        
        public var openapi: String?
        
        public var paths: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case info = "info"
            
            case servers = "servers"
            
            case tags = "tags"
            
            case openapi = "openapi"
            
            case paths = "paths"
            
        }

        public init(info: [String: Any]? = nil, openapi: String? = nil, paths: [String: Any]? = nil, servers: [ServerSchema]? = nil, tags: [TagSpecSchema]? = nil) {
            
            self.info = info
            
            self.servers = servers
            
            self.tags = tags
            
            self.openapi = openapi
            
            self.paths = paths
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    info = try container.decode([String: Any].self, forKey: .info)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    servers = try container.decode([ServerSchema].self, forKey: .servers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([TagSpecSchema].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    openapi = try container.decode(String.self, forKey: .openapi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paths = try container.decode([String: Any].self, forKey: .paths)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            
            try? container.encodeIfPresent(servers, forKey: .servers)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(openapi, forKey: .openapi)
            
            
            
            
            try? container.encodeIfPresent(paths, forKey: .paths)
            
            
        }
        
    }
}


