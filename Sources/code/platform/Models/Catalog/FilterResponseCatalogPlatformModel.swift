

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: FilterResponse
        Used By: Catalog
    */

    class FilterResponse: Codable {
        
        
        public var values: [ValueItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
        }

        public init(values: [ValueItem]? = nil) {
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    values = try container.decode([ValueItem].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: FilterResponse
        Used By: Catalog
    */

    class FilterResponse: Codable {
        
        
        public var values: [ValueItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
        }

        public init(values: [ValueItem]? = nil) {
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    values = try container.decode([ValueItem].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


