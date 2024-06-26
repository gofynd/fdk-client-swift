

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: TokenSchemaID
        Used By: Configuration
    */

    class TokenSchemaID: Codable {
        
        
        public var token: String?
        
        public var createdBy: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case createdBy = "created_by"
            
            case createdAt = "created_at"
            
        }

        public init(createdAt: String? = nil, createdBy: String? = nil, token: String? = nil) {
            
            self.token = token
            
            self.createdBy = createdBy
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: TokenSchemaID
        Used By: Configuration
    */

    class TokenSchemaID: Codable {
        
        
        public var token: String?
        
        public var createdBy: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case createdBy = "created_by"
            
            case createdAt = "created_at"
            
        }

        public init(createdAt: String? = nil, createdBy: String? = nil, token: String? = nil) {
            
            self.token = token
            
            self.createdBy = createdBy
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}


