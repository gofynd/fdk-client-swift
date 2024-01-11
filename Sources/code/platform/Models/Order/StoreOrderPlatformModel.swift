

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Store
        Used By: Order
    */

    class Store: Codable {
        
        
        public var phone: Int
        
        public var isActive: Bool?
        
        public var companyId: Int
        
        public var alohomoraUserId: Int?
        
        public var createdAt: String
        
        public var contactPerson: String
        
        public var storeEmail: String
        
        public var isEnabledForRecon: Bool?
        
        public var pincode: String
        
        public var mallArea: String?
        
        public var vatNo: String?
        
        public var address1: String
        
        public var displayAddress: String?
        
        public var storeActiveFrom: String?
        
        public var city: String
        
        public var name: String
        
        public var longitude: Double?
        
        public var brandStoreTags: [String]?
        
        public var orderIntegrationId: String?
        
        public var parentStoreId: Int?
        
        public var locationType: String
        
        public var code: String?
        
        public var fulfillmentChannel: String
        
        public var updatedAt: String?
        
        public var storeAddressJson: StoreAddress?
        
        public var meta: StoreMeta
        
        public var sId: String?
        
        public var state: String
        
        public var country: String
        
        public var packagingMaterialCount: Int?
        
        public var isArchived: Bool?
        
        public var loginUsername: String?
        
        public var mallName: String?
        
        public var latitude: Double?
        
        public var address2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case alohomoraUserId = "alohomora_user_id"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case storeEmail = "store_email"
            
            case isEnabledForRecon = "is_enabled_for_recon"
            
            case pincode = "pincode"
            
            case mallArea = "mall_area"
            
            case vatNo = "vat_no"
            
            case address1 = "address1"
            
            case displayAddress = "display_address"
            
            case storeActiveFrom = "store_active_from"
            
            case city = "city"
            
            case name = "name"
            
            case longitude = "longitude"
            
            case brandStoreTags = "brand_store_tags"
            
            case orderIntegrationId = "order_integration_id"
            
            case parentStoreId = "parent_store_id"
            
            case locationType = "location_type"
            
            case code = "code"
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case updatedAt = "updated_at"
            
            case storeAddressJson = "store_address_json"
            
            case meta = "meta"
            
            case sId = "s_id"
            
            case state = "state"
            
            case country = "country"
            
            case packagingMaterialCount = "packaging_material_count"
            
            case isArchived = "is_archived"
            
            case loginUsername = "login_username"
            
            case mallName = "mall_name"
            
            case latitude = "latitude"
            
            case address2 = "address2"
            
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, displayAddress: String? = nil, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double? = nil, locationType: String, loginUsername: String? = nil, longitude: Double? = nil, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String? = nil, updatedAt: String? = nil, vatNo: String? = nil) {
            
            self.phone = phone
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.alohomoraUserId = alohomoraUserId
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.storeEmail = storeEmail
            
            self.isEnabledForRecon = isEnabledForRecon
            
            self.pincode = pincode
            
            self.mallArea = mallArea
            
            self.vatNo = vatNo
            
            self.address1 = address1
            
            self.displayAddress = displayAddress
            
            self.storeActiveFrom = storeActiveFrom
            
            self.city = city
            
            self.name = name
            
            self.longitude = longitude
            
            self.brandStoreTags = brandStoreTags
            
            self.orderIntegrationId = orderIntegrationId
            
            self.parentStoreId = parentStoreId
            
            self.locationType = locationType
            
            self.code = code
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.updatedAt = updatedAt
            
            self.storeAddressJson = storeAddressJson
            
            self.meta = meta
            
            self.sId = sId
            
            self.state = state
            
            self.country = country
            
            self.packagingMaterialCount = packagingMaterialCount
            
            self.isArchived = isArchived
            
            self.loginUsername = loginUsername
            
            self.mallName = mallName
            
            self.latitude = latitude
            
            self.address2 = address2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(Int.self, forKey: .phone)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
            
            
            
                do {
                    isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                do {
                    mallArea = try container.decode(String.self, forKey: .mallArea)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vatNo = try container.decode(String.self, forKey: .vatNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    displayAddress = try container.decode(String.self, forKey: .displayAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                locationType = try container.decode(String.self, forKey: .locationType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
            
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                meta = try container.decode(StoreMeta.self, forKey: .meta)
                
            
            
            
                do {
                    sId = try container.decode(String.self, forKey: .sId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loginUsername = try container.decode(String.self, forKey: .loginUsername)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mallName = try container.decode(String.self, forKey: .mallName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encode(alohomoraUserId, forKey: .alohomoraUserId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encode(isEnabledForRecon, forKey: .isEnabledForRecon)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(mallArea, forKey: .mallArea)
            
            
            
            
            try? container.encode(vatNo, forKey: .vatNo)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(longitude, forKey: .longitude)
            
            
            
            
            try? container.encode(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encode(parentStoreId, forKey: .parentStoreId)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encode(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(sId, forKey: .sId)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encode(packagingMaterialCount, forKey: .packagingMaterialCount)
            
            
            
            
            try? container.encode(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encode(loginUsername, forKey: .loginUsername)
            
            
            
            
            try? container.encode(mallName, forKey: .mallName)
            
            
            
            
            try? container.encode(latitude, forKey: .latitude)
            
            
            
            
            try? container.encode(address2, forKey: .address2)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Store
        Used By: Order
    */

    class Store: Codable {
        
        
        public var phone: Int
        
        public var isActive: Bool?
        
        public var companyId: Int
        
        public var alohomoraUserId: Int?
        
        public var createdAt: String
        
        public var contactPerson: String
        
        public var storeEmail: String
        
        public var isEnabledForRecon: Bool?
        
        public var pincode: String
        
        public var mallArea: String?
        
        public var vatNo: String?
        
        public var address1: String
        
        public var displayAddress: String?
        
        public var storeActiveFrom: String?
        
        public var city: String
        
        public var name: String
        
        public var longitude: Double?
        
        public var brandStoreTags: [String]?
        
        public var orderIntegrationId: String?
        
        public var parentStoreId: Int?
        
        public var locationType: String
        
        public var code: String?
        
        public var fulfillmentChannel: String
        
        public var updatedAt: String?
        
        public var storeAddressJson: StoreAddress?
        
        public var meta: StoreMeta
        
        public var sId: String?
        
        public var state: String
        
        public var country: String
        
        public var packagingMaterialCount: Int?
        
        public var isArchived: Bool?
        
        public var loginUsername: String?
        
        public var mallName: String?
        
        public var latitude: Double?
        
        public var address2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case alohomoraUserId = "alohomora_user_id"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case storeEmail = "store_email"
            
            case isEnabledForRecon = "is_enabled_for_recon"
            
            case pincode = "pincode"
            
            case mallArea = "mall_area"
            
            case vatNo = "vat_no"
            
            case address1 = "address1"
            
            case displayAddress = "display_address"
            
            case storeActiveFrom = "store_active_from"
            
            case city = "city"
            
            case name = "name"
            
            case longitude = "longitude"
            
            case brandStoreTags = "brand_store_tags"
            
            case orderIntegrationId = "order_integration_id"
            
            case parentStoreId = "parent_store_id"
            
            case locationType = "location_type"
            
            case code = "code"
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case updatedAt = "updated_at"
            
            case storeAddressJson = "store_address_json"
            
            case meta = "meta"
            
            case sId = "s_id"
            
            case state = "state"
            
            case country = "country"
            
            case packagingMaterialCount = "packaging_material_count"
            
            case isArchived = "is_archived"
            
            case loginUsername = "login_username"
            
            case mallName = "mall_name"
            
            case latitude = "latitude"
            
            case address2 = "address2"
            
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, displayAddress: String? = nil, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double? = nil, locationType: String, loginUsername: String? = nil, longitude: Double? = nil, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String? = nil, updatedAt: String? = nil, vatNo: String? = nil) {
            
            self.phone = phone
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.alohomoraUserId = alohomoraUserId
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.storeEmail = storeEmail
            
            self.isEnabledForRecon = isEnabledForRecon
            
            self.pincode = pincode
            
            self.mallArea = mallArea
            
            self.vatNo = vatNo
            
            self.address1 = address1
            
            self.displayAddress = displayAddress
            
            self.storeActiveFrom = storeActiveFrom
            
            self.city = city
            
            self.name = name
            
            self.longitude = longitude
            
            self.brandStoreTags = brandStoreTags
            
            self.orderIntegrationId = orderIntegrationId
            
            self.parentStoreId = parentStoreId
            
            self.locationType = locationType
            
            self.code = code
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.updatedAt = updatedAt
            
            self.storeAddressJson = storeAddressJson
            
            self.meta = meta
            
            self.sId = sId
            
            self.state = state
            
            self.country = country
            
            self.packagingMaterialCount = packagingMaterialCount
            
            self.isArchived = isArchived
            
            self.loginUsername = loginUsername
            
            self.mallName = mallName
            
            self.latitude = latitude
            
            self.address2 = address2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(Int.self, forKey: .phone)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
            
            
            
                do {
                    isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                do {
                    mallArea = try container.decode(String.self, forKey: .mallArea)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vatNo = try container.decode(String.self, forKey: .vatNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    displayAddress = try container.decode(String.self, forKey: .displayAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                locationType = try container.decode(String.self, forKey: .locationType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
            
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                meta = try container.decode(StoreMeta.self, forKey: .meta)
                
            
            
            
                do {
                    sId = try container.decode(String.self, forKey: .sId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loginUsername = try container.decode(String.self, forKey: .loginUsername)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mallName = try container.decode(String.self, forKey: .mallName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encode(alohomoraUserId, forKey: .alohomoraUserId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encode(isEnabledForRecon, forKey: .isEnabledForRecon)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(mallArea, forKey: .mallArea)
            
            
            
            
            try? container.encode(vatNo, forKey: .vatNo)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(longitude, forKey: .longitude)
            
            
            
            
            try? container.encode(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encode(parentStoreId, forKey: .parentStoreId)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encode(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(sId, forKey: .sId)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encode(packagingMaterialCount, forKey: .packagingMaterialCount)
            
            
            
            
            try? container.encode(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encode(loginUsername, forKey: .loginUsername)
            
            
            
            
            try? container.encode(mallName, forKey: .mallName)
            
            
            
            
            try? container.encode(latitude, forKey: .latitude)
            
            
            
            
            try? container.encode(address2, forKey: .address2)
            
            
        }
        
    }
}


