

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandStoreTags: [String]?

        public var fulfillmentChannel: String

        public var mallArea: String?

        public var code: String?

        public var sId: String

        public var companyId: Int

        public var createdAt: String

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var address1: String

        public var brandId: [String: Any]?

        public var phone: Int

        public var pincode: String

        public var contactPerson: String

        public var updatedAt: String?

        public var packagingMaterialCount: Int?

        public var state: String

        public var isActive: Bool?

        public var storeEmail: String

        public var orderIntegrationId: String?

        public var storeActiveFrom: String?

        public var longitude: Double

        public var name: String

        public var parentStoreId: Int?

        public var country: String

        public var loginUsername: String

        public var mallName: String?

        public var address2: String?

        public var city: String

        public var latitude: Double

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case fulfillmentChannel = "fulfillment_channel"

            case mallArea = "mall_area"

            case code

            case sId = "s_id"

            case companyId = "company_id"

            case createdAt = "created_at"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case brandId = "brand_id"

            case phone

            case pincode

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case packagingMaterialCount = "packaging_material_count"

            case state

            case isActive = "is_active"

            case storeEmail = "store_email"

            case orderIntegrationId = "order_integration_id"

            case storeActiveFrom = "store_active_from"

            case longitude

            case name

            case parentStoreId = "parent_store_id"

            case country

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case address2

            case city

            case latitude

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case isArchived = "is_archived"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.fulfillmentChannel = fulfillmentChannel

            self.mallArea = mallArea

            self.code = code

            self.sId = sId

            self.companyId = companyId

            self.createdAt = createdAt

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.brandId = brandId

            self.phone = phone

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.orderIntegrationId = orderIntegrationId

            self.storeActiveFrom = storeActiveFrom

            self.longitude = longitude

            self.name = name

            self.parentStoreId = parentStoreId

            self.country = country

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.address2 = address2

            self.city = city

            self.latitude = latitude

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

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
        public var brandStoreTags: [String]?

        public var fulfillmentChannel: String

        public var mallArea: String?

        public var code: String?

        public var sId: String

        public var companyId: Int

        public var createdAt: String

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var vatNo: String?

        public var alohomoraUserId: Int?

        public var address1: String

        public var brandId: [String: Any]?

        public var phone: Int

        public var pincode: String

        public var contactPerson: String

        public var updatedAt: String?

        public var packagingMaterialCount: Int?

        public var state: String

        public var isActive: Bool?

        public var storeEmail: String

        public var orderIntegrationId: String?

        public var storeActiveFrom: String?

        public var longitude: Double

        public var name: String

        public var parentStoreId: Int?

        public var country: String

        public var loginUsername: String

        public var mallName: String?

        public var address2: String?

        public var city: String

        public var latitude: Double

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case brandStoreTags = "brand_store_tags"

            case fulfillmentChannel = "fulfillment_channel"

            case mallArea = "mall_area"

            case code

            case sId = "s_id"

            case companyId = "company_id"

            case createdAt = "created_at"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case vatNo = "vat_no"

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case brandId = "brand_id"

            case phone

            case pincode

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case packagingMaterialCount = "packaging_material_count"

            case state

            case isActive = "is_active"

            case storeEmail = "store_email"

            case orderIntegrationId = "order_integration_id"

            case storeActiveFrom = "store_active_from"

            case longitude

            case name

            case parentStoreId = "parent_store_id"

            case country

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case address2

            case city

            case latitude

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case isArchived = "is_archived"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandStoreTags = brandStoreTags

            self.fulfillmentChannel = fulfillmentChannel

            self.mallArea = mallArea

            self.code = code

            self.sId = sId

            self.companyId = companyId

            self.createdAt = createdAt

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.vatNo = vatNo

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.brandId = brandId

            self.phone = phone

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.packagingMaterialCount = packagingMaterialCount

            self.state = state

            self.isActive = isActive

            self.storeEmail = storeEmail

            self.orderIntegrationId = orderIntegrationId

            self.storeActiveFrom = storeActiveFrom

            self.longitude = longitude

            self.name = name

            self.parentStoreId = parentStoreId

            self.country = country

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.address2 = address2

            self.city = city

            self.latitude = latitude

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}
