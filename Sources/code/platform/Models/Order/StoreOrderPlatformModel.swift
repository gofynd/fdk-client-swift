

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var name: String

        public var packagingMaterialCount: Int?

        public var brandStoreTags: [String]?

        public var createdAt: String

        public var loginUsername: String

        public var code: String?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var mallName: String?

        public var meta: StoreMeta

        public var address1: String

        public var address2: String?

        public var state: String

        public var isActive: Bool?

        public var parentStoreId: Int?

        public var storeEmail: String

        public var phone: Int

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var storeAddressJson: StoreAddress?

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var sId: String

        public var pincode: String

        public var city: String

        public var latitude: Double

        public var mallArea: String?

        public var companyId: Int

        public var locationType: String

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case country

            case name

            case packagingMaterialCount = "packaging_material_count"

            case brandStoreTags = "brand_store_tags"

            case createdAt = "created_at"

            case loginUsername = "login_username"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case mallName = "mall_name"

            case meta

            case address1

            case address2

            case state

            case isActive = "is_active"

            case parentStoreId = "parent_store_id"

            case storeEmail = "store_email"

            case phone

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case storeAddressJson = "store_address_json"

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case sId = "s_id"

            case pincode

            case city

            case latitude

            case mallArea = "mall_area"

            case companyId = "company_id"

            case locationType = "location_type"

            case isArchived = "is_archived"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.name = name

            self.packagingMaterialCount = packagingMaterialCount

            self.brandStoreTags = brandStoreTags

            self.createdAt = createdAt

            self.loginUsername = loginUsername

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.mallName = mallName

            self.meta = meta

            self.address1 = address1

            self.address2 = address2

            self.state = state

            self.isActive = isActive

            self.parentStoreId = parentStoreId

            self.storeEmail = storeEmail

            self.phone = phone

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.storeAddressJson = storeAddressJson

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.sId = sId

            self.pincode = pincode

            self.city = city

            self.latitude = latitude

            self.mallArea = mallArea

            self.companyId = companyId

            self.locationType = locationType

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var name: String

        public var packagingMaterialCount: Int?

        public var brandStoreTags: [String]?

        public var createdAt: String

        public var loginUsername: String

        public var code: String?

        public var fulfillmentChannel: String

        public var longitude: Double

        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var mallName: String?

        public var meta: StoreMeta

        public var address1: String

        public var address2: String?

        public var state: String

        public var isActive: Bool?

        public var parentStoreId: Int?

        public var storeEmail: String

        public var phone: Int

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var storeAddressJson: StoreAddress?

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var sId: String

        public var pincode: String

        public var city: String

        public var latitude: Double

        public var mallArea: String?

        public var companyId: Int

        public var locationType: String

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case country

            case name

            case packagingMaterialCount = "packaging_material_count"

            case brandStoreTags = "brand_store_tags"

            case createdAt = "created_at"

            case loginUsername = "login_username"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case longitude

            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case mallName = "mall_name"

            case meta

            case address1

            case address2

            case state

            case isActive = "is_active"

            case parentStoreId = "parent_store_id"

            case storeEmail = "store_email"

            case phone

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case storeAddressJson = "store_address_json"

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case sId = "s_id"

            case pincode

            case city

            case latitude

            case mallArea = "mall_area"

            case companyId = "company_id"

            case locationType = "location_type"

            case isArchived = "is_archived"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.name = name

            self.packagingMaterialCount = packagingMaterialCount

            self.brandStoreTags = brandStoreTags

            self.createdAt = createdAt

            self.loginUsername = loginUsername

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.longitude = longitude

            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.mallName = mallName

            self.meta = meta

            self.address1 = address1

            self.address2 = address2

            self.state = state

            self.isActive = isActive

            self.parentStoreId = parentStoreId

            self.storeEmail = storeEmail

            self.phone = phone

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.storeAddressJson = storeAddressJson

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.sId = sId

            self.pincode = pincode

            self.city = city

            self.latitude = latitude

            self.mallArea = mallArea

            self.companyId = companyId

            self.locationType = locationType

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            sId = try container.decode(String.self, forKey: .sId)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}
