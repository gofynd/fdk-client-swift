

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: AreaExpanded
        Used By: Serviceability
    */

    class AreaExpanded: Codable {
        
        
        public var country: Country?
        
        public var regions: [Region]?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case regions = "regions"
            
        }

        public init(country: Country? = nil, regions: [Region]? = nil) {
            
            self.country = country
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(Country.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    regions = try container.decode([Region].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: AreaExpanded
        Used By: Serviceability
    */

    class AreaExpanded: Codable {
        
        
        public var country: Country?
        
        public var regions: [Region]?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case regions = "regions"
            
        }

        public init(country: Country? = nil, regions: [Region]? = nil) {
            
            self.country = country
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(Country.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    regions = try container.decode([Region].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}


