

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var name: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var address2: String?

        public var storeActiveFrom: String?

        public var contactPerson: String

        public var loginUsername: String

        public var storeEmail: String

        public var vatNo: String?

        public var brandStoreTags: [String]?

        public var isArchived: Bool?

        public var address1: String

        public var state: String

        public var parentStoreId: Int?

        public var locationType: String

        public var createdAt: String

        public var sId: String

        public var updatedAt: String?

        public var phone: Int

        public var pincode: String

        public var mallArea: String?

        public var country: String

        public var city: String

        public var isActive: Bool?

        public var isEnabledForRecon: Bool?

        public var companyId: Int

        public var code: String?

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var orderIntegrationId: String?

        public var mallName: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case name

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case address2

            case storeActiveFrom = "store_active_from"

            case contactPerson = "contact_person"

            case loginUsername = "login_username"

            case storeEmail = "store_email"

            case vatNo = "vat_no"

            case brandStoreTags = "brand_store_tags"

            case isArchived = "is_archived"

            case address1

            case state

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case createdAt = "created_at"

            case sId = "s_id"

            case updatedAt = "updated_at"

            case phone

            case pincode

            case mallArea = "mall_area"

            case country

            case city

            case isActive = "is_active"

            case isEnabledForRecon = "is_enabled_for_recon"

            case companyId = "company_id"

            case code

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case orderIntegrationId = "order_integration_id"

            case mallName = "mall_name"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case latitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.name = name

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.address2 = address2

            self.storeActiveFrom = storeActiveFrom

            self.contactPerson = contactPerson

            self.loginUsername = loginUsername

            self.storeEmail = storeEmail

            self.vatNo = vatNo

            self.brandStoreTags = brandStoreTags

            self.isArchived = isArchived

            self.address1 = address1

            self.state = state

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.createdAt = createdAt

            self.sId = sId

            self.updatedAt = updatedAt

            self.phone = phone

            self.pincode = pincode

            self.mallArea = mallArea

            self.country = country

            self.city = city

            self.isActive = isActive

            self.isEnabledForRecon = isEnabledForRecon

            self.companyId = companyId

            self.code = code

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.orderIntegrationId = orderIntegrationId

            self.mallName = mallName

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var name: String

        public var packagingMaterialCount: Int?

        public var meta: StoreMeta

        public var address2: String?

        public var storeActiveFrom: String?

        public var contactPerson: String

        public var loginUsername: String

        public var storeEmail: String

        public var vatNo: String?

        public var brandStoreTags: [String]?

        public var isArchived: Bool?

        public var address1: String

        public var state: String

        public var parentStoreId: Int?

        public var locationType: String

        public var createdAt: String

        public var sId: String

        public var updatedAt: String?

        public var phone: Int

        public var pincode: String

        public var mallArea: String?

        public var country: String

        public var city: String

        public var isActive: Bool?

        public var isEnabledForRecon: Bool?

        public var companyId: Int

        public var code: String?

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var orderIntegrationId: String?

        public var mallName: String?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case name

            case packagingMaterialCount = "packaging_material_count"

            case meta

            case address2

            case storeActiveFrom = "store_active_from"

            case contactPerson = "contact_person"

            case loginUsername = "login_username"

            case storeEmail = "store_email"

            case vatNo = "vat_no"

            case brandStoreTags = "brand_store_tags"

            case isArchived = "is_archived"

            case address1

            case state

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case createdAt = "created_at"

            case sId = "s_id"

            case updatedAt = "updated_at"

            case phone

            case pincode

            case mallArea = "mall_area"

            case country

            case city

            case isActive = "is_active"

            case isEnabledForRecon = "is_enabled_for_recon"

            case companyId = "company_id"

            case code

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case orderIntegrationId = "order_integration_id"

            case mallName = "mall_name"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case latitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.name = name

            self.packagingMaterialCount = packagingMaterialCount

            self.meta = meta

            self.address2 = address2

            self.storeActiveFrom = storeActiveFrom

            self.contactPerson = contactPerson

            self.loginUsername = loginUsername

            self.storeEmail = storeEmail

            self.vatNo = vatNo

            self.brandStoreTags = brandStoreTags

            self.isArchived = isArchived

            self.address1 = address1

            self.state = state

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.createdAt = createdAt

            self.sId = sId

            self.updatedAt = updatedAt

            self.phone = phone

            self.pincode = pincode

            self.mallArea = mallArea

            self.country = country

            self.city = city

            self.isActive = isActive

            self.isEnabledForRecon = isEnabledForRecon

            self.companyId = companyId

            self.code = code

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.orderIntegrationId = orderIntegrationId

            self.mallName = mallName

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
