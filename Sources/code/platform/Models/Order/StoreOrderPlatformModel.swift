

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address2: String?

        public var contactPerson: String

        public var mallArea: String?

        public var parentStoreId: Int?

        public var phone: Int

        public var orderIntegrationId: String?

        public var createdAt: String

        public var pincode: String

        public var country: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var isActive: Bool?

        public var address1: String

        public var name: String

        public var latitude: Double

        public var locationType: String

        public var isArchived: Bool?

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var fulfillmentChannel: String

        public var companyId: Int

        public var mallName: String?

        public var alohomoraUserId: Int?

        public var code: String?

        public var longitude: Double

        public var city: String

        public var packagingMaterialCount: Int?

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var storeEmail: String

        public var loginUsername: String

        public var sId: String

        public var state: String

        public var brandStoreTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case address2

            case contactPerson = "contact_person"

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case phone

            case orderIntegrationId = "order_integration_id"

            case createdAt = "created_at"

            case pincode

            case country

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case isActive = "is_active"

            case address1

            case name

            case latitude

            case locationType = "location_type"

            case isArchived = "is_archived"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case mallName = "mall_name"

            case alohomoraUserId = "alohomora_user_id"

            case code

            case longitude

            case city

            case packagingMaterialCount = "packaging_material_count"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case loginUsername = "login_username"

            case sId = "s_id"

            case state

            case brandStoreTags = "brand_store_tags"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address2 = address2

            self.contactPerson = contactPerson

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.orderIntegrationId = orderIntegrationId

            self.createdAt = createdAt

            self.pincode = pincode

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.isActive = isActive

            self.address1 = address1

            self.name = name

            self.latitude = latitude

            self.locationType = locationType

            self.isArchived = isArchived

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.mallName = mallName

            self.alohomoraUserId = alohomoraUserId

            self.code = code

            self.longitude = longitude

            self.city = city

            self.packagingMaterialCount = packagingMaterialCount

            self.vatNo = vatNo

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.loginUsername = loginUsername

            self.sId = sId

            self.state = state

            self.brandStoreTags = brandStoreTags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address2: String?

        public var contactPerson: String

        public var mallArea: String?

        public var parentStoreId: Int?

        public var phone: Int

        public var orderIntegrationId: String?

        public var createdAt: String

        public var pincode: String

        public var country: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var isActive: Bool?

        public var address1: String

        public var name: String

        public var latitude: Double

        public var locationType: String

        public var isArchived: Bool?

        public var isEnabledForRecon: Bool?

        public var meta: StoreMeta

        public var fulfillmentChannel: String

        public var companyId: Int

        public var mallName: String?

        public var alohomoraUserId: Int?

        public var code: String?

        public var longitude: Double

        public var city: String

        public var packagingMaterialCount: Int?

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var storeEmail: String

        public var loginUsername: String

        public var sId: String

        public var state: String

        public var brandStoreTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case address2

            case contactPerson = "contact_person"

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case phone

            case orderIntegrationId = "order_integration_id"

            case createdAt = "created_at"

            case pincode

            case country

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case isActive = "is_active"

            case address1

            case name

            case latitude

            case locationType = "location_type"

            case isArchived = "is_archived"

            case isEnabledForRecon = "is_enabled_for_recon"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case mallName = "mall_name"

            case alohomoraUserId = "alohomora_user_id"

            case code

            case longitude

            case city

            case packagingMaterialCount = "packaging_material_count"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case loginUsername = "login_username"

            case sId = "s_id"

            case state

            case brandStoreTags = "brand_store_tags"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address2 = address2

            self.contactPerson = contactPerson

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.orderIntegrationId = orderIntegrationId

            self.createdAt = createdAt

            self.pincode = pincode

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.isActive = isActive

            self.address1 = address1

            self.name = name

            self.latitude = latitude

            self.locationType = locationType

            self.isArchived = isArchived

            self.isEnabledForRecon = isEnabledForRecon

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.mallName = mallName

            self.alohomoraUserId = alohomoraUserId

            self.code = code

            self.longitude = longitude

            self.city = city

            self.packagingMaterialCount = packagingMaterialCount

            self.vatNo = vatNo

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.loginUsername = loginUsername

            self.sId = sId

            self.state = state

            self.brandStoreTags = brandStoreTags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
        }
    }
}
