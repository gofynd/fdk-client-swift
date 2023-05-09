

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address1: String

        public var vatNo: String?

        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var isArchived: Bool?

        public var mallArea: String?

        public var state: String

        public var phone: Int

        public var updatedAt: String?

        public var latitude: Double

        public var mallName: String?

        public var brandStoreTags: [String]?

        public var code: String?

        public var country: String

        public var address2: String?

        public var pincode: String

        public var alohomoraUserId: Int?

        public var storeAddressJson: StoreAddress?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var isActive: Bool?

        public var packagingMaterialCount: Int?

        public var createdAt: String

        public var contactPerson: String

        public var name: String

        public var parentStoreId: Int?

        public var companyId: Int

        public var sId: String

        public var loginUsername: String

        public var locationType: String

        public var longitude: Double

        public var city: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case vatNo = "vat_no"

            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case isArchived = "is_archived"

            case mallArea = "mall_area"

            case state

            case phone

            case updatedAt = "updated_at"

            case latitude

            case mallName = "mall_name"

            case brandStoreTags = "brand_store_tags"

            case code

            case country

            case address2

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case storeAddressJson = "store_address_json"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case isActive = "is_active"

            case packagingMaterialCount = "packaging_material_count"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case name

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case sId = "s_id"

            case loginUsername = "login_username"

            case locationType = "location_type"

            case longitude

            case city

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.vatNo = vatNo

            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.isArchived = isArchived

            self.mallArea = mallArea

            self.state = state

            self.phone = phone

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.mallName = mallName

            self.brandStoreTags = brandStoreTags

            self.code = code

            self.country = country

            self.address2 = address2

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.storeAddressJson = storeAddressJson

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.isActive = isActive

            self.packagingMaterialCount = packagingMaterialCount

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.name = name

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.sId = sId

            self.loginUsername = loginUsername

            self.locationType = locationType

            self.longitude = longitude

            self.city = city

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

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
        public var address1: String

        public var vatNo: String?

        public var meta: StoreMeta

        public var isEnabledForRecon: Bool?

        public var brandId: [String: Any]?

        public var fulfillmentChannel: String

        public var isArchived: Bool?

        public var mallArea: String?

        public var state: String

        public var phone: Int

        public var updatedAt: String?

        public var latitude: Double

        public var mallName: String?

        public var brandStoreTags: [String]?

        public var code: String?

        public var country: String

        public var address2: String?

        public var pincode: String

        public var alohomoraUserId: Int?

        public var storeAddressJson: StoreAddress?

        public var storeActiveFrom: String?

        public var storeEmail: String

        public var isActive: Bool?

        public var packagingMaterialCount: Int?

        public var createdAt: String

        public var contactPerson: String

        public var name: String

        public var parentStoreId: Int?

        public var companyId: Int

        public var sId: String

        public var loginUsername: String

        public var locationType: String

        public var longitude: Double

        public var city: String

        public var orderIntegrationId: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case vatNo = "vat_no"

            case meta

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandId = "brand_id"

            case fulfillmentChannel = "fulfillment_channel"

            case isArchived = "is_archived"

            case mallArea = "mall_area"

            case state

            case phone

            case updatedAt = "updated_at"

            case latitude

            case mallName = "mall_name"

            case brandStoreTags = "brand_store_tags"

            case code

            case country

            case address2

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case storeAddressJson = "store_address_json"

            case storeActiveFrom = "store_active_from"

            case storeEmail = "store_email"

            case isActive = "is_active"

            case packagingMaterialCount = "packaging_material_count"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case name

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case sId = "s_id"

            case loginUsername = "login_username"

            case locationType = "location_type"

            case longitude

            case city

            case orderIntegrationId = "order_integration_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.vatNo = vatNo

            self.meta = meta

            self.isEnabledForRecon = isEnabledForRecon

            self.brandId = brandId

            self.fulfillmentChannel = fulfillmentChannel

            self.isArchived = isArchived

            self.mallArea = mallArea

            self.state = state

            self.phone = phone

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.mallName = mallName

            self.brandStoreTags = brandStoreTags

            self.code = code

            self.country = country

            self.address2 = address2

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.storeAddressJson = storeAddressJson

            self.storeActiveFrom = storeActiveFrom

            self.storeEmail = storeEmail

            self.isActive = isActive

            self.packagingMaterialCount = packagingMaterialCount

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.name = name

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.sId = sId

            self.loginUsername = loginUsername

            self.locationType = locationType

            self.longitude = longitude

            self.city = city

            self.orderIntegrationId = orderIntegrationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            name = try container.decode(String.self, forKey: .name)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            locationType = try container.decode(String.self, forKey: .locationType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)
        }
    }
}
