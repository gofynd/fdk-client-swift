

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var longitude: Double

        public var mallArea: String?

        public var locationType: String

        public var storeEmail: String

        public var contactPerson: String

        public var address2: String?

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var address1: String

        public var isActive: Bool?

        public var loginUsername: String

        public var mallName: String?

        public var name: String

        public var sId: String

        public var updatedAt: String?

        public var createdAt: String

        public var code: String?

        public var country: String

        public var phone: Int

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var alohomoraUserId: Int?

        public var vatNo: String?

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var city: String

        public var isEnabledForRecon: Bool?

        public var parentStoreId: Int?

        public var companyId: Int

        public var latitude: Double

        public var storeActiveFrom: String?

        public var state: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case mallArea = "mall_area"

            case locationType = "location_type"

            case storeEmail = "store_email"

            case contactPerson = "contact_person"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case address1

            case isActive = "is_active"

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case name

            case sId = "s_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case code

            case country

            case phone

            case pincode

            case storeAddressJson = "store_address_json"

            case alohomoraUserId = "alohomora_user_id"

            case vatNo = "vat_no"

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case latitude

            case storeActiveFrom = "store_active_from"

            case state

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.longitude = longitude

            self.mallArea = mallArea

            self.locationType = locationType

            self.storeEmail = storeEmail

            self.contactPerson = contactPerson

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.address1 = address1

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.name = name

            self.sId = sId

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.code = code

            self.country = country

            self.phone = phone

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.alohomoraUserId = alohomoraUserId

            self.vatNo = vatNo

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.latitude = latitude

            self.storeActiveFrom = storeActiveFrom

            self.state = state

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var longitude: Double

        public var mallArea: String?

        public var locationType: String

        public var storeEmail: String

        public var contactPerson: String

        public var address2: String?

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var address1: String

        public var isActive: Bool?

        public var loginUsername: String

        public var mallName: String?

        public var name: String

        public var sId: String

        public var updatedAt: String?

        public var createdAt: String

        public var code: String?

        public var country: String

        public var phone: Int

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var alohomoraUserId: Int?

        public var vatNo: String?

        public var brandStoreTags: [String]?

        public var brandId: [String: Any]?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var city: String

        public var isEnabledForRecon: Bool?

        public var parentStoreId: Int?

        public var companyId: Int

        public var latitude: Double

        public var storeActiveFrom: String?

        public var state: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case mallArea = "mall_area"

            case locationType = "location_type"

            case storeEmail = "store_email"

            case contactPerson = "contact_person"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case address1

            case isActive = "is_active"

            case loginUsername = "login_username"

            case mallName = "mall_name"

            case name

            case sId = "s_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case code

            case country

            case phone

            case pincode

            case storeAddressJson = "store_address_json"

            case alohomoraUserId = "alohomora_user_id"

            case vatNo = "vat_no"

            case brandStoreTags = "brand_store_tags"

            case brandId = "brand_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case latitude

            case storeActiveFrom = "store_active_from"

            case state

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.longitude = longitude

            self.mallArea = mallArea

            self.locationType = locationType

            self.storeEmail = storeEmail

            self.contactPerson = contactPerson

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.address1 = address1

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.mallName = mallName

            self.name = name

            self.sId = sId

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.code = code

            self.country = country

            self.phone = phone

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.alohomoraUserId = alohomoraUserId

            self.vatNo = vatNo

            self.brandStoreTags = brandStoreTags

            self.brandId = brandId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.latitude = latitude

            self.storeActiveFrom = storeActiveFrom

            self.state = state

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}
