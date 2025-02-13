

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Area
        Used By: Serviceability
    */

    class Area: Codable {
        
        
        public var regions: [String]?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
            case country = "country"
            
        }

        public init(country: String? = nil, regions: [String]? = nil) {
            
            self.regions = regions
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    regions = try container.decode([String].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Area
        Used By: Serviceability
    */

    class Area: Codable {
        
        
        public var regions: [String]?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
            case country = "country"
            
        }

        public init(country: String? = nil, regions: [String]? = nil) {
            
            self.regions = regions
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    regions = try container.decode([String].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}


