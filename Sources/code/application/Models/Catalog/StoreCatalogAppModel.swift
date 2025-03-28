

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: Store
        Used By: Catalog
    */
    class Store: Codable {
        
        public var uid: Int?
        
        public var storeEmail: String?
        
        public var state: String?
        
        public var country: String?
        
        public var pincode: String?
        
        public var city: String?
        
        public var address: String?
        
        public var storeCode: String?
        
        public var latLong: LatLong?
        
        public var name: String?
        
        public var tags: [String]?
        
        public var managerContact: String?
        
        public var contacts: [ContactDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case storeEmail = "store_email"
            
            case state = "state"
            
            case country = "country"
            
            case pincode = "pincode"
            
            case city = "city"
            
            case address = "address"
            
            case storeCode = "store_code"
            
            case latLong = "lat_long"
            
            case name = "name"
            
            case tags = "tags"
            
            case managerContact = "manager_contact"
            
            case contacts = "contacts"
            
        }

        public init(address: String? = nil, city: String? = nil, contacts: [ContactDetails]? = nil, country: String? = nil, latLong: LatLong? = nil, managerContact: String? = nil, name: String? = nil, pincode: String? = nil, state: String? = nil, storeCode: String? = nil, storeEmail: String? = nil, tags: [String]? = nil, uid: Int? = nil) {
            
            self.uid = uid
            
            self.storeEmail = storeEmail
            
            self.state = state
            
            self.country = country
            
            self.pincode = pincode
            
            self.city = city
            
            self.address = address
            
            self.storeCode = storeCode
            
            self.latLong = latLong
            
            self.name = name
            
            self.tags = tags
            
            self.managerContact = managerContact
            
            self.contacts = contacts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)
            
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
                country = try container.decode(String.self, forKey: .country)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pincode = try container.decode(String.self, forKey: .pincode)
            
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
                address = try container.decode(String.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latLong = try container.decode(LatLong.self, forKey: .latLong)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                managerContact = try container.decode(String.self, forKey: .managerContact)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                contacts = try container.decode([ContactDetails].self, forKey: .contacts)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(managerContact, forKey: .managerContact)
            
            
            
            try? container.encodeIfPresent(contacts, forKey: .contacts)
            
            
        }
        
    }
}
