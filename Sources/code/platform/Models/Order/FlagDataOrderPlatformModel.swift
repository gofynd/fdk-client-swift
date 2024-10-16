

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FlagData
        Used By: Order
    */

    class FlagData: Codable {
        
        
        public var filter: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
        }

        public init(filter: [String: Any]? = nil) {
            
            self.filter = filter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode([String: Any].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FlagData
        Used By: Order
    */

    class FlagData: Codable {
        
        
        public var filter: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
        }

        public init(filter: [String: Any]? = nil) {
            
            self.filter = filter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode([String: Any].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
        }
        
    }
}


