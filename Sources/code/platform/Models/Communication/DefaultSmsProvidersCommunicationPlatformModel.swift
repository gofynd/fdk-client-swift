

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: DefaultSmsProviders
        Used By: Communication
    */

    class DefaultSmsProviders: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool? = nil, name: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.isDefault = isDefault
            
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
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: DefaultSmsProviders
        Used By: Communication
    */

    class DefaultSmsProviders: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool? = nil, name: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.isDefault = isDefault
            
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
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}


