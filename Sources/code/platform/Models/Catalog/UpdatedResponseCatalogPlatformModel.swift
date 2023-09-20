

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdatedResponse
        Used By: Catalog
    */

    class UpdatedResponse: Codable {
        
        
        public var itemsNotUpdated: [Int]?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemsNotUpdated = "items_not_updated"
            
            case message = "message"
            
        }

        public init(itemsNotUpdated: [Int]? = nil, message: String? = nil) {
            
            self.itemsNotUpdated = itemsNotUpdated
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemsNotUpdated = try container.decode([Int].self, forKey: .itemsNotUpdated)
                
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
            
            
            
            try? container.encodeIfPresent(itemsNotUpdated, forKey: .itemsNotUpdated)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdatedResponse
        Used By: Catalog
    */

    class UpdatedResponse: Codable {
        
        
        public var itemsNotUpdated: [Int]?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemsNotUpdated = "items_not_updated"
            
            case message = "message"
            
        }

        public init(itemsNotUpdated: [Int]? = nil, message: String? = nil) {
            
            self.itemsNotUpdated = itemsNotUpdated
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemsNotUpdated = try container.decode([Int].self, forKey: .itemsNotUpdated)
                
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
            
            
            
            try? container.encodeIfPresent(itemsNotUpdated, forKey: .itemsNotUpdated)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


