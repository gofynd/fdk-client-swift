

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocalityParents
        Used By: Serviceability
    */

    class LocalityParents: Codable {
        
        
        public var city: [String: Any]?
        
        public var state: [String: Any]?
        
        public var country: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case state = "state"
            
            case country = "country"
            
        }

        public init(city: [String: Any]? = nil, country: [String: Any]? = nil, state: [String: Any]? = nil) {
            
            self.city = city
            
            self.state = state
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    city = try container.decode([String: Any].self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode([String: Any].self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode([String: Any].self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocalityParents
        Used By: Serviceability
    */

    class LocalityParents: Codable {
        
        
        public var city: [String: Any]?
        
        public var state: [String: Any]?
        
        public var country: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case state = "state"
            
            case country = "country"
            
        }

        public init(city: [String: Any]? = nil, country: [String: Any]? = nil, state: [String: Any]? = nil) {
            
            self.city = city
            
            self.state = state
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    city = try container.decode([String: Any].self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode([String: Any].self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode([String: Any].self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}


