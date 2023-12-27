

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetOneOrAllQuery
        Used By: Logistic
    */
    class GetOneOrAllQuery: Codable {
        
        public var country: String?
        
        public var state: String?
        
        public var city: String?
        
        public var sector: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case state = "state"
            
            case city = "city"
            
            case sector = "sector"
            
        }

        public init(city: String? = nil, country: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.country = country
            
            self.state = state
            
            self.city = city
            
            self.sector = sector
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                country = try container.decode(String.self, forKey: .country)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                state = try container.decode(String.self, forKey: .state)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                city = try container.decode(String.self, forKey: .city)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sector = try container.decode(String.self, forKey: .sector)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
            
            
            try? container.encode(sector, forKey: .sector)
            
            
        }
        
    }
}
