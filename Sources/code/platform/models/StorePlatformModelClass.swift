

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var updatedAt: String?

        public var storeEmail: String

        public var fulfillmentChannel: String

        public var createdAt: String

        public var contactPerson: String

        public var longitude: Double

        public var isActive: Bool?

        public var state: String

        public var packagingMaterialCount: Int?

        public var code: String?

        public var locationType: String

        public var brandStoreTags: [String]?

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var orderIntegrationId: String?

        public var companyId: Int

        public var storeActiveFrom: String?

        public var city: String

        public var loginUsername: String

        public var mallArea: String?

        public var meta: StoreMeta

        public var latitude: Double

        public var parentStoreId: Int?

        public var storeAddressJson: StoreAddress?

        public var address1: String

        public var mallName: String?

        public var vatNo: String?

        public var country: String

        public var sId: String

        public var isEnabledForRecon: Bool?

        public var address2: String?

        public var name: String

        public var brandId: [String: Any]?

        public var pincode: String

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case storeEmail = "store_email"

            case fulfillmentChannel = "fulfillment_channel"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case longitude

            case isActive = "is_active"

            case state

            case packagingMaterialCount = "packaging_material_count"

            case code

            case locationType = "location_type"

            case brandStoreTags = "brand_store_tags"

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case orderIntegrationId = "order_integration_id"

            case companyId = "company_id"

            case storeActiveFrom = "store_active_from"

            case city

            case loginUsername = "login_username"

            case mallArea = "mall_area"

            case meta

            case latitude

            case parentStoreId = "parent_store_id"

            case storeAddressJson = "store_address_json"

            case address1

            case mallName = "mall_name"

            case vatNo = "vat_no"

            case country

            case sId = "s_id"

            case isEnabledForRecon = "is_enabled_for_recon"

            case address2

            case name

            case brandId = "brand_id"

            case pincode

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.updatedAt = updatedAt

            self.storeEmail = storeEmail

            self.fulfillmentChannel = fulfillmentChannel

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.isActive = isActive

            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.code = code

            self.locationType = locationType

            self.brandStoreTags = brandStoreTags

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.orderIntegrationId = orderIntegrationId

            self.companyId = companyId

            self.storeActiveFrom = storeActiveFrom

            self.city = city

            self.loginUsername = loginUsername

            self.mallArea = mallArea

            self.meta = meta

            self.latitude = latitude

            self.parentStoreId = parentStoreId

            self.storeAddressJson = storeAddressJson

            self.address1 = address1

            self.mallName = mallName

            self.vatNo = vatNo

            self.country = country

            self.sId = sId

            self.isEnabledForRecon = isEnabledForRecon

            self.address2 = address2

            self.name = name

            self.brandId = brandId

            self.pincode = pincode

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
