

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DetailFilter
        Used By: Catalog
    */

    class DetailFilter: Codable {
        
        
        public var data: [FilterItem]?
        
        public var values: DetailFilterValues?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case values = "values"
            
        }

        public init(data: [FilterItem]? = nil, values: DetailFilterValues? = nil) {
            
            self.data = data
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([FilterItem].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode(DetailFilterValues.self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DetailFilter
        Used By: Catalog
    */

    class DetailFilter: Codable {
        
        
        public var data: [FilterItem]?
        
        public var values: DetailFilterValues?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case values = "values"
            
        }

        public init(data: [FilterItem]? = nil, values: DetailFilterValues? = nil) {
            
            self.data = data
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([FilterItem].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode(DetailFilterValues.self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


