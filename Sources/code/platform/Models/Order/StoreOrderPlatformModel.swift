

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
        
        public var brandId: [String: Any]?
        
        public var storeEmail: String
        
        public var isEnabledForRecon: Bool?
        
        public var pincode: String
        
        public var mallArea: String?
        
        public var vatNo: String?
        
        public var address1: String
        
        public var storeActiveFrom: String?
        
        public var city: String
        
        public var name: String
        
        public var longitude: Double
        
        public var brandStoreTags: [String]?
        
        public var orderIntegrationId: String?
        
        public var parentStoreId: Int?
        
        public var locationType: String
        
        public var code: String?
        
        public var fulfillmentChannel: String
        
        public var updatedAt: String?
        
        public var storeAddressJson: StoreAddress?
        
        public var meta: StoreMeta
        
        public var sId: String
        
        public var state: String
        
        public var country: String
        
        public var packagingMaterialCount: Int?
        
        public var isArchived: Bool?
        
        public var loginUsername: String
        
        public var mallName: String?
        
        public var latitude: Double
        
        public var address2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case alohomoraUserId = "alohomora_user_id"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case brandId = "brand_id"
            
            case storeEmail = "store_email"
            
            case isEnabledForRecon = "is_enabled_for_recon"
            
            case pincode = "pincode"
            
            case mallArea = "mall_area"
            
            case vatNo = "vat_no"
            
            case address1 = "address1"
            
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

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            
            self.phone = phone
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.alohomoraUserId = alohomoraUserId
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.brandId = brandId
            
            self.storeEmail = storeEmail
            
            self.isEnabledForRecon = isEnabledForRecon
            
            self.pincode = pincode
            
            self.mallArea = mallArea
            
            self.vatNo = vatNo
            
            self.address1 = address1
            
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
                
            
            
            
                do {
                    brandId = try container.decode([String: Any].self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
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
                
            
            
            
                sId = try container.decode(String.self, forKey: .sId)
                
            
            
            
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
                
            
            
                loginUsername = try container.decode(String.self, forKey: .loginUsername)
                
            
            
            
                do {
                    mallName = try container.decode(String.self, forKey: .mallName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(mallArea, forKey: .mallArea)
            
            
            
            
            try? container.encodeIfPresent(vatNo, forKey: .vatNo)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(storeActiveFrom, forKey: .storeActiveFrom)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(sId, forKey: .sId)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
            
            
            
            
            try? container.encodeIfPresent(mallName, forKey: .mallName)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
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
        
        public var brandId: [String: Any]?
        
        public var storeEmail: String
        
        public var isEnabledForRecon: Bool?
        
        public var pincode: String
        
        public var mallArea: String?
        
        public var vatNo: String?
        
        public var address1: String
        
        public var storeActiveFrom: String?
        
        public var city: String
        
        public var name: String
        
        public var longitude: Double
        
        public var brandStoreTags: [String]?
        
        public var orderIntegrationId: String?
        
        public var parentStoreId: Int?
        
        public var locationType: String
        
        public var code: String?
        
        public var fulfillmentChannel: String
        
        public var updatedAt: String?
        
        public var storeAddressJson: StoreAddress?
        
        public var meta: StoreMeta
        
        public var sId: String
        
        public var state: String
        
        public var country: String
        
        public var packagingMaterialCount: Int?
        
        public var isArchived: Bool?
        
        public var loginUsername: String
        
        public var mallName: String?
        
        public var latitude: Double
        
        public var address2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case alohomoraUserId = "alohomora_user_id"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case brandId = "brand_id"
            
            case storeEmail = "store_email"
            
            case isEnabledForRecon = "is_enabled_for_recon"
            
            case pincode = "pincode"
            
            case mallArea = "mall_area"
            
            case vatNo = "vat_no"
            
            case address1 = "address1"
            
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

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            
            self.phone = phone
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.alohomoraUserId = alohomoraUserId
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.brandId = brandId
            
            self.storeEmail = storeEmail
            
            self.isEnabledForRecon = isEnabledForRecon
            
            self.pincode = pincode
            
            self.mallArea = mallArea
            
            self.vatNo = vatNo
            
            self.address1 = address1
            
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
                
            
            
            
                do {
                    brandId = try container.decode([String: Any].self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
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
                
            
            
            
                sId = try container.decode(String.self, forKey: .sId)
                
            
            
            
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
                
            
            
                loginUsername = try container.decode(String.self, forKey: .loginUsername)
                
            
            
            
                do {
                    mallName = try container.decode(String.self, forKey: .mallName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(mallArea, forKey: .mallArea)
            
            
            
            
            try? container.encodeIfPresent(vatNo, forKey: .vatNo)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(storeActiveFrom, forKey: .storeActiveFrom)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(sId, forKey: .sId)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
            
            
            
            
            try? container.encodeIfPresent(mallName, forKey: .mallName)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
        }
        
    }
}


