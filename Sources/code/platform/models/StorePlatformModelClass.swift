

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var companyId: Int

        public var state: String

        public var mallArea: String?

        public var mallName: String?

        public var meta: StoreMeta

        public var storeActiveFrom: String?

        public var packagingMaterialCount: Int?

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var alohomoraUserId: Int?

        public var locationType: String

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var isActive: Bool?

        public var country: String

        public var fulfillmentChannel: String

        public var updatedAt: String?

        public var code: String?

        public var name: String

        public var brandStoreTags: [String]?

        public var storeEmail: String

        public var city: String

        public var address2: String?

        public var isArchived: Bool?

        public var latitude: Double

        public var address1: String

        public var createdAt: String

        public var loginUsername: String

        public var pincode: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var parentStoreId: Int?

        public var sId: String

        public var contactPerson: String

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case state

            case mallArea = "mall_area"

            case mallName = "mall_name"

            case meta

            case storeActiveFrom = "store_active_from"

            case packagingMaterialCount = "packaging_material_count"

            case storeAddressJson = "store_address_json"

            case longitude

            case alohomoraUserId = "alohomora_user_id"

            case locationType = "location_type"

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case isActive = "is_active"

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case updatedAt = "updated_at"

            case code

            case name

            case brandStoreTags = "brand_store_tags"

            case storeEmail = "store_email"

            case city

            case address2

            case isArchived = "is_archived"

            case latitude

            case address1

            case createdAt = "created_at"

            case loginUsername = "login_username"

            case pincode

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case contactPerson = "contact_person"

            case phone
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.companyId = companyId

            self.state = state

            self.mallArea = mallArea

            self.mallName = mallName

            self.meta = meta

            self.storeActiveFrom = storeActiveFrom

            self.packagingMaterialCount = packagingMaterialCount

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.alohomoraUserId = alohomoraUserId

            self.locationType = locationType

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.isActive = isActive

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.updatedAt = updatedAt

            self.code = code

            self.name = name

            self.brandStoreTags = brandStoreTags

            self.storeEmail = storeEmail

            self.city = city

            self.address2 = address2

            self.isArchived = isArchived

            self.latitude = latitude

            self.address1 = address1

            self.createdAt = createdAt

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.vatNo = vatNo

            self.brandId = brandId

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.contactPerson = contactPerson

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
