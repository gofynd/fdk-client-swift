

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Meta
        Used By: Catalog
    */

    class Meta: Codable {
        
        
        public var headers: GuideHeaders?
        
        public var values: [GuideValues]?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case headers = "headers"
            
            case values = "values"
            
            case unit = "unit"
            
        }

        public init(headers: GuideHeaders? = nil, unit: String? = nil, values: [GuideValues]? = nil) {
            
            self.headers = headers
            
            self.values = values
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    headers = try container.decode(GuideHeaders.self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode([GuideValues].self, forKey: .values)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Meta
        Used By: Catalog
    */

    class Meta: Codable {
        
        
        public var headers: GuideHeaders?
        
        public var values: [GuideValues]?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case headers = "headers"
            
            case values = "values"
            
            case unit = "unit"
            
        }

        public init(headers: GuideHeaders? = nil, unit: String? = nil, values: [GuideValues]? = nil) {
            
            self.headers = headers
            
            self.values = values
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    headers = try container.decode(GuideHeaders.self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode([GuideValues].self, forKey: .values)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


