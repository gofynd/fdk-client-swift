

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentItemFulFillingStore
        Used By: Order
    */

    class ShipmentItemFulFillingStore: Codable {
        
        
        public var phone: String?
        
        public var brandStoreTags: String?
        
        public var pincode: String?
        
        public var meta: [String: Any]?
        
        public var address: String?
        
        public var locationType: String?
        
        public var id: Int
        
        public var code: String
        
        public var storeEmail: String?
        
        public var name: String?
        
        public var state: String?
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case brandStoreTags = "brand_store_tags"
            
            case pincode = "pincode"
            
            case meta = "meta"
            
            case address = "address"
            
            case locationType = "location_type"
            
            case id = "id"
            
            case code = "code"
            
            case storeEmail = "store_email"
            
            case name = "name"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String? = nil, brandStoreTags: String? = nil, city: String? = nil, code: String, id: Int, locationType: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeEmail: String? = nil) {
            
            self.phone = phone
            
            self.brandStoreTags = brandStoreTags
            
            self.pincode = pincode
            
            self.meta = meta
            
            self.address = address
            
            self.locationType = locationType
            
            self.id = id
            
            self.code = code
            
            self.storeEmail = storeEmail
            
            self.name = name
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandStoreTags = try container.decode(String.self, forKey: .brandStoreTags)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    locationType = try container.decode(String.self, forKey: .locationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(phone, forKey: .phone)
            
            
            
            
            try? container.encode(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encode(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(address, forKey: .address)
            
            
            
            
            try? container.encode(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encode(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentItemFulFillingStore
        Used By: Order
    */

    class ShipmentItemFulFillingStore: Codable {
        
        
        public var phone: String?
        
        public var brandStoreTags: String?
        
        public var pincode: String?
        
        public var meta: [String: Any]?
        
        public var address: String?
        
        public var locationType: String?
        
        public var id: Int
        
        public var code: String
        
        public var storeEmail: String?
        
        public var name: String?
        
        public var state: String?
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case brandStoreTags = "brand_store_tags"
            
            case pincode = "pincode"
            
            case meta = "meta"
            
            case address = "address"
            
            case locationType = "location_type"
            
            case id = "id"
            
            case code = "code"
            
            case storeEmail = "store_email"
            
            case name = "name"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String? = nil, brandStoreTags: String? = nil, city: String? = nil, code: String, id: Int, locationType: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeEmail: String? = nil) {
            
            self.phone = phone
            
            self.brandStoreTags = brandStoreTags
            
            self.pincode = pincode
            
            self.meta = meta
            
            self.address = address
            
            self.locationType = locationType
            
            self.id = id
            
            self.code = code
            
            self.storeEmail = storeEmail
            
            self.name = name
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandStoreTags = try container.decode(String.self, forKey: .brandStoreTags)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    locationType = try container.decode(String.self, forKey: .locationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(phone, forKey: .phone)
            
            
            
            
            try? container.encode(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encode(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(address, forKey: .address)
            
            
            
            
            try? container.encode(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encode(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
        }
        
    }
}


