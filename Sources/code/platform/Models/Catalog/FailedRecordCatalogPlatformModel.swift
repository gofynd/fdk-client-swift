

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: FailedRecord
        Used By: Catalog
    */

    class FailedRecord: Codable {
        
        
        public var identifiers: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case message = "message"
            
        }

        public init(identifiers: String? = nil, message: String? = nil) {
            
            self.identifiers = identifiers
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode(String.self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: FailedRecord
        Used By: Catalog
    */

    class FailedRecord: Codable {
        
        
        public var identifiers: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case message = "message"
            
        }

        public init(identifiers: String? = nil, message: String? = nil) {
            
            self.identifiers = identifiers
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode(String.self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


