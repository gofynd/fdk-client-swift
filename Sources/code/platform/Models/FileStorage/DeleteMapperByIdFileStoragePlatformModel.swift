

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DeleteMapperById
        Used By: FileStorage
    */

    class DeleteMapperById: Codable {
        
        
        public var message: String?
        
        public var defaultTemplate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case defaultTemplate = "default_template"
            
        }

        public init(defaultTemplate: Bool? = nil, message: String? = nil) {
            
            self.message = message
            
            self.defaultTemplate = defaultTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultTemplate = try container.decode(Bool.self, forKey: .defaultTemplate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(defaultTemplate, forKey: .defaultTemplate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DeleteMapperById
        Used By: FileStorage
    */

    class DeleteMapperById: Codable {
        
        
        public var message: String?
        
        public var defaultTemplate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case defaultTemplate = "default_template"
            
        }

        public init(defaultTemplate: Bool? = nil, message: String? = nil) {
            
            self.message = message
            
            self.defaultTemplate = defaultTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultTemplate = try container.decode(Bool.self, forKey: .defaultTemplate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(defaultTemplate, forKey: .defaultTemplate)
            
            
        }
        
    }
}


