

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Meta
        Used By: Catalog
    */

    class Meta: Codable {
        
        
        public var headers: [String: Any]?
        
        public var unit: String?
        
        public var values: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case headers = "headers"
            
            case unit = "unit"
            
            case values = "values"
            
        }

        public init(headers: [String: Any]? = nil, unit: String? = nil, values: [[String: Any]]? = nil) {
            
            self.headers = headers
            
            self.unit = unit
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    headers = try container.decode([String: Any].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode([[String: Any]].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Meta
        Used By: Catalog
    */

    class Meta: Codable {
        
        
        public var headers: [String: Any]?
        
        public var unit: String?
        
        public var values: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case headers = "headers"
            
            case unit = "unit"
            
            case values = "values"
            
        }

        public init(headers: [String: Any]? = nil, unit: String? = nil, values: [[String: Any]]? = nil) {
            
            self.headers = headers
            
            self.unit = unit
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    headers = try container.decode([String: Any].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode([[String: Any]].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


