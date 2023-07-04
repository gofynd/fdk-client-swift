

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallName: String?

        public var updatedAt: String?

        public var address2: String?

        public var loginUsername: String

        public var vatNo: String?

        public var longitude: Double

        public var country: String

        public var sId: String

        public var state: String

        public var packagingMaterialCount: Int?

        public var pincode: String

        public var brandStoreTags: [String]?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var isActive: Bool?

        public var companyId: Int

        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var phone: Int

        public var storeEmail: String

        public var latitude: Double

        public var createdAt: String

        public var code: String?

        public var storeAddressJson: StoreAddress?

        public var contactPerson: String

        public var storeActiveFrom: String?

        public var parentStoreId: Int?

        public var city: String

        public var orderIntegrationId: String?

        public var locationType: String

        public var address1: String

        public var name: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case address2

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case longitude

            case country

            case sId = "s_id"

            case state

            case packagingMaterialCount = "packaging_material_count"

            case pincode

            case brandStoreTags = "brand_store_tags"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case isActive = "is_active"

            case companyId = "company_id"

            case brandId = "brand_id"

            case meta

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case phone

            case storeEmail = "store_email"

            case latitude

            case createdAt = "created_at"

            case code

            case storeAddressJson = "store_address_json"

            case contactPerson = "contact_person"

            case storeActiveFrom = "store_active_from"

            case parentStoreId = "parent_store_id"

            case city

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case address1

            case name

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallName = mallName

            self.updatedAt = updatedAt

            self.address2 = address2

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.longitude = longitude

            self.country = country

            self.sId = sId

            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.isActive = isActive

            self.companyId = companyId

            self.brandId = brandId

            self.meta = meta

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.phone = phone

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.createdAt = createdAt

            self.code = code

            self.storeAddressJson = storeAddressJson

            self.contactPerson = contactPerson

            self.storeActiveFrom = storeActiveFrom

            self.parentStoreId = parentStoreId

            self.city = city

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.address1 = address1

            self.name = name

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            phone = try container.decode(Int.self, forKey: .phone)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallName: String?

        public var updatedAt: String?

        public var address2: String?

        public var loginUsername: String

        public var vatNo: String?

        public var longitude: Double

        public var country: String

        public var sId: String

        public var state: String

        public var packagingMaterialCount: Int?

        public var pincode: String

        public var brandStoreTags: [String]?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var isActive: Bool?

        public var companyId: Int

        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var isArchived: Bool?

        public var alohomoraUserId: Int?

        public var phone: Int

        public var storeEmail: String

        public var latitude: Double

        public var createdAt: String

        public var code: String?

        public var storeAddressJson: StoreAddress?

        public var contactPerson: String

        public var storeActiveFrom: String?

        public var parentStoreId: Int?

        public var city: String

        public var orderIntegrationId: String?

        public var locationType: String

        public var address1: String

        public var name: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case address2

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case longitude

            case country

            case sId = "s_id"

            case state

            case packagingMaterialCount = "packaging_material_count"

            case pincode

            case brandStoreTags = "brand_store_tags"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case isActive = "is_active"

            case companyId = "company_id"

            case brandId = "brand_id"

            case meta

            case isArchived = "is_archived"

            case alohomoraUserId = "alohomora_user_id"

            case phone

            case storeEmail = "store_email"

            case latitude

            case createdAt = "created_at"

            case code

            case storeAddressJson = "store_address_json"

            case contactPerson = "contact_person"

            case storeActiveFrom = "store_active_from"

            case parentStoreId = "parent_store_id"

            case city

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case address1

            case name

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallName = mallName

            self.updatedAt = updatedAt

            self.address2 = address2

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.longitude = longitude

            self.country = country

            self.sId = sId

            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.isActive = isActive

            self.companyId = companyId

            self.brandId = brandId

            self.meta = meta

            self.isArchived = isArchived

            self.alohomoraUserId = alohomoraUserId

            self.phone = phone

            self.storeEmail = storeEmail

            self.latitude = latitude

            self.createdAt = createdAt

            self.code = code

            self.storeAddressJson = storeAddressJson

            self.contactPerson = contactPerson

            self.storeActiveFrom = storeActiveFrom

            self.parentStoreId = parentStoreId

            self.city = city

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.address1 = address1

            self.name = name

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            phone = try container.decode(Int.self, forKey: .phone)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            city = try container.decode(String.self, forKey: .city)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
