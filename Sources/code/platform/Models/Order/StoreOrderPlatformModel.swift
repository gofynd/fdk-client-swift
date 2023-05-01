

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var pincode: String

        public var createdAt: String

        public var vatNo: String?

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var storeEmail: String

        public var address2: String?

        public var mallName: String?

        public var loginUsername: String

        public var phone: Int

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var storeActiveFrom: String?

        public var address1: String

        public var longitude: Double

        public var latitude: Double

        public var locationType: String

        public var code: String?

        public var packagingMaterialCount: Int?

        public var mallArea: String?

        public var name: String

        public var state: String

        public var parentStoreId: Int?

        public var city: String

        public var meta: StoreMeta

        public var updatedAt: String?

        public var country: String

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var fulfillmentChannel: String

        public var companyId: Int

        public var contactPerson: String

        public var isActive: Bool?

        public var alohomoraUserId: Int?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case createdAt = "created_at"

            case vatNo = "vat_no"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case storeEmail = "store_email"

            case address2

            case mallName = "mall_name"

            case loginUsername = "login_username"

            case phone

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeActiveFrom = "store_active_from"

            case address1

            case longitude

            case latitude

            case locationType = "location_type"

            case code

            case packagingMaterialCount = "packaging_material_count"

            case mallArea = "mall_area"

            case name

            case state

            case parentStoreId = "parent_store_id"

            case city

            case meta

            case updatedAt = "updated_at"

            case country

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case isActive = "is_active"

            case alohomoraUserId = "alohomora_user_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.pincode = pincode

            self.createdAt = createdAt

            self.vatNo = vatNo

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.storeEmail = storeEmail

            self.address2 = address2

            self.mallName = mallName

            self.loginUsername = loginUsername

            self.phone = phone

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.storeActiveFrom = storeActiveFrom

            self.address1 = address1

            self.longitude = longitude

            self.latitude = latitude

            self.locationType = locationType

            self.code = code

            self.packagingMaterialCount = packagingMaterialCount

            self.mallArea = mallArea

            self.name = name

            self.state = state

            self.parentStoreId = parentStoreId

            self.city = city

            self.meta = meta

            self.updatedAt = updatedAt

            self.country = country

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.isActive = isActive

            self.alohomoraUserId = alohomoraUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            phone = try container.decode(Int.self, forKey: .phone)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var pincode: String

        public var createdAt: String

        public var vatNo: String?

        public var isArchived: Bool?

        public var brandStoreTags: [String]?

        public var storeEmail: String

        public var address2: String?

        public var mallName: String?

        public var loginUsername: String

        public var phone: Int

        public var orderIntegrationId: String?

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public var storeActiveFrom: String?

        public var address1: String

        public var longitude: Double

        public var latitude: Double

        public var locationType: String

        public var code: String?

        public var packagingMaterialCount: Int?

        public var mallArea: String?

        public var name: String

        public var state: String

        public var parentStoreId: Int?

        public var city: String

        public var meta: StoreMeta

        public var updatedAt: String?

        public var country: String

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var fulfillmentChannel: String

        public var companyId: Int

        public var contactPerson: String

        public var isActive: Bool?

        public var alohomoraUserId: Int?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case createdAt = "created_at"

            case vatNo = "vat_no"

            case isArchived = "is_archived"

            case brandStoreTags = "brand_store_tags"

            case storeEmail = "store_email"

            case address2

            case mallName = "mall_name"

            case loginUsername = "login_username"

            case phone

            case orderIntegrationId = "order_integration_id"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeActiveFrom = "store_active_from"

            case address1

            case longitude

            case latitude

            case locationType = "location_type"

            case code

            case packagingMaterialCount = "packaging_material_count"

            case mallArea = "mall_area"

            case name

            case state

            case parentStoreId = "parent_store_id"

            case city

            case meta

            case updatedAt = "updated_at"

            case country

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case isActive = "is_active"

            case alohomoraUserId = "alohomora_user_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.pincode = pincode

            self.createdAt = createdAt

            self.vatNo = vatNo

            self.isArchived = isArchived

            self.brandStoreTags = brandStoreTags

            self.storeEmail = storeEmail

            self.address2 = address2

            self.mallName = mallName

            self.loginUsername = loginUsername

            self.phone = phone

            self.orderIntegrationId = orderIntegrationId

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon

            self.storeActiveFrom = storeActiveFrom

            self.address1 = address1

            self.longitude = longitude

            self.latitude = latitude

            self.locationType = locationType

            self.code = code

            self.packagingMaterialCount = packagingMaterialCount

            self.mallArea = mallArea

            self.name = name

            self.state = state

            self.parentStoreId = parentStoreId

            self.city = city

            self.meta = meta

            self.updatedAt = updatedAt

            self.country = country

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.isActive = isActive

            self.alohomoraUserId = alohomoraUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            phone = try container.decode(Int.self, forKey: .phone)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)
        }
    }
}
