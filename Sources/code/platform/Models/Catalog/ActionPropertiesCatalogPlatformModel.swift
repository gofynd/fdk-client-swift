

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ActionProperties
        Used By: Catalog
    */

    class ActionProperties: Codable {
        
        
        public var collection: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case collection = "collection"
            
        }

        public init(collection: [String]? = nil) {
            
            self.collection = collection
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    collection = try container.decode([String].self, forKey: .collection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ActionProperties
        Used By: Catalog
    */

    class ActionProperties: Codable {
        
        
        public var collection: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case collection = "collection"
            
        }

        public init(collection: [String]? = nil) {
            
            self.collection = collection
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    collection = try container.decode([String].self, forKey: .collection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
        }
        
    }
}


