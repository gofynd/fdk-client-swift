

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BuyerDetails
        Used By: Order
    */

    class BuyerDetails: Codable {
        
        
        public var ajioSiteId: String?
        
        public var pincode: Int
        
        public var address: String
        
        public var gstin: String
        
        public var name: String
        
        public var state: String
        
        public var city: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ajioSiteId = "ajio_site_id"
            
            case pincode = "pincode"
            
            case address = "address"
            
            case gstin = "gstin"
            
            case name = "name"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            
            self.ajioSiteId = ajioSiteId
            
            self.pincode = pincode
            
            self.address = address
            
            self.gstin = gstin
            
            self.name = name
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                gstin = try container.decode(String.self, forKey: .gstin)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BuyerDetails
        Used By: Order
    */

    class BuyerDetails: Codable {
        
        
        public var ajioSiteId: String?
        
        public var pincode: Int
        
        public var address: String
        
        public var gstin: String
        
        public var name: String
        
        public var state: String
        
        public var city: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ajioSiteId = "ajio_site_id"
            
            case pincode = "pincode"
            
            case address = "address"
            
            case gstin = "gstin"
            
            case name = "name"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            
            self.ajioSiteId = ajioSiteId
            
            self.pincode = pincode
            
            self.address = address
            
            self.gstin = gstin
            
            self.name = name
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                gstin = try container.decode(String.self, forKey: .gstin)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}


