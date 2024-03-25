

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GeoAreaCount
        Used By: Serviceability
    */

    class GeoAreaCount: Codable {
        
        
        public var pincode: Int
        
        public var state: Int
        
        public var city: Int
        
        public var sector: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case state = "state"
            
            case city = "city"
            
            case sector = "sector"
            
        }

        public init(city: Int, pincode: Int, sector: Int, state: Int) {
            
            self.pincode = pincode
            
            self.state = state
            
            self.city = city
            
            self.sector = sector
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                state = try container.decode(Int.self, forKey: .state)
                
            
            
            
                city = try container.decode(Int.self, forKey: .city)
                
            
            
            
                sector = try container.decode(Int.self, forKey: .sector)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GeoAreaCount
        Used By: Serviceability
    */

    class GeoAreaCount: Codable {
        
        
        public var pincode: Int
        
        public var state: Int
        
        public var city: Int
        
        public var sector: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case state = "state"
            
            case city = "city"
            
            case sector = "sector"
            
        }

        public init(city: Int, pincode: Int, sector: Int, state: Int) {
            
            self.pincode = pincode
            
            self.state = state
            
            self.city = city
            
            self.sector = sector
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                state = try container.decode(Int.self, forKey: .state)
                
            
            
            
                city = try container.decode(Int.self, forKey: .city)
                
            
            
            
                sector = try container.decode(Int.self, forKey: .sector)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
        }
        
    }
}


