

import Foundation
public extension PlatformClient {
    /*
        Model: Store
        Used By: Order
    */

    class Store: Codable {
        
        
        public var storeEmail: String
        
        public var updatedAt: String?
        
        public var isArchived: Bool?
        
        public var fulfillmentChannel: String
        
        public var code: String?
        
        public var address1: String
        
        public var longitude: Double
        
        public var parentStoreId: Int?
        
        public var mallName: String?
        
        public var brandId: [String: Any]?
        
        public var country: String
        
        public var brandStoreTags: [String]?
        
        public var isEnabledForRecon: Bool?
        
        public var contactPerson: String
        
        public var packagingMaterialCount: Int?
        
        public var locationType: String
        
        public var createdAt: String
        
        public var meta: StoreMeta
        
        public var phone: Int
        
        public var mallArea: String?
        
        public var vatNo: String?
        
        public var companyId: Int
        
        public var pincode: String
        
        public var loginUsername: String
        
        public var sId: String
        
        public var name: String
        
        public var address2: String?
        
        public var alohomoraUserId: Int?
        
        public var storeAddressJson: StoreAddress?
        
        public var state: String
        
        public var isActive: Bool?
        
        public var orderIntegrationId: String?
        
        public var latitude: Double
        
        public var storeActiveFrom: String?
        
        public var city: String
        

        public enum CodingKeys: String, CodingKey {
            
            case storeEmail = "store_email"
            
            case updatedAt = "updated_at"
            
            case isArchived = "is_archived"
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case code = "code"
            
            case address1 = "address1"
            
            case longitude = "longitude"
            
            case parentStoreId = "parent_store_id"
            
            case mallName = "mall_name"
            
            case brandId = "brand_id"
            
            case country = "country"
            
            case brandStoreTags = "brand_store_tags"
            
            case isEnabledForRecon = "is_enabled_for_recon"
            
            case contactPerson = "contact_person"
            
            case packagingMaterialCount = "packaging_material_count"
            
            case locationType = "location_type"
            
            case createdAt = "created_at"
            
            case meta = "meta"
            
            case phone = "phone"
            
            case mallArea = "mall_area"
            
            case vatNo = "vat_no"
            
            case companyId = "company_id"
            
            case pincode = "pincode"
            
            case loginUsername = "login_username"
            
            case sId = "s_id"
            
            case name = "name"
            
            case address2 = "address2"
            
            case alohomoraUserId = "alohomora_user_id"
            
            case storeAddressJson = "store_address_json"
            
            case state = "state"
            
            case isActive = "is_active"
            
            case orderIntegrationId = "order_integration_id"
            
            case latitude = "latitude"
            
            case storeActiveFrom = "store_active_from"
            
            case city = "city"
            
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            
            self.storeEmail = storeEmail
            
            self.updatedAt = updatedAt
            
            self.isArchived = isArchived
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.code = code
            
            self.address1 = address1
            
            self.longitude = longitude
            
            self.parentStoreId = parentStoreId
            
            self.mallName = mallName
            
            self.brandId = brandId
            
            self.country = country
            
            self.brandStoreTags = brandStoreTags
            
            self.isEnabledForRecon = isEnabledForRecon
            
            self.contactPerson = contactPerson
            
            self.packagingMaterialCount = packagingMaterialCount
            
            self.locationType = locationType
            
            self.createdAt = createdAt
            
            self.meta = meta
            
            self.phone = phone
            
            self.mallArea = mallArea
            
            self.vatNo = vatNo
            
            self.companyId = companyId
            
            self.pincode = pincode
            
            self.loginUsername = loginUsername
            
            self.sId = sId
            
            self.name = name
            
            self.address2 = address2
            
            self.alohomoraUserId = alohomoraUserId
            
            self.storeAddressJson = storeAddressJson
            
            self.state = state
            
            self.isActive = isActive
            
            self.orderIntegrationId = orderIntegrationId
            
            self.latitude = latitude
            
            self.storeActiveFrom = storeActiveFrom
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
            
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                
            
            
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                do {
                    parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)
                
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
                    brandId = try container.decode([String: Any].self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                do {
                    packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                locationType = try container.decode(String.self, forKey: .locationType)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                meta = try container.decode(StoreMeta.self, forKey: .meta)
                
            
            
            
                phone = try container.decode(Int.self, forKey: .phone)
                
            
            
            
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
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                loginUsername = try container.decode(String.self, forKey: .loginUsername)
                
            
            
            
                sId = try container.decode(String.self, forKey: .sId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)
                
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
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                do {
                    storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encode(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)
            
            
            
            
            try? container.encode(mallName, forKey: .mallName)
            
            
            
            
            try? container.encode(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encode(mallArea, forKey: .mallArea)
            
            
            
            
            try? container.encode(vatNo, forKey: .vatNo)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
            
            
            
            
            try? container.encodeIfPresent(sId, forKey: .sId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}
