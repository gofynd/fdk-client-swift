

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address2: String?

        public var locationType: String

        public var isArchived: Bool?

        public var code: String?

        public var brandId: [String: Any]?

        public var mallArea: String?

        public var state: String

        public var vatNo: String?

        public var city: String

        public var longitude: Double

        public var loginUsername: String

        public var packagingMaterialCount: Int?

        public var storeAddressJson: StoreAddress?

        public var meta: StoreMeta

        public var address1: String

        public var parentStoreId: Int?

        public var name: String

        public var storeEmail: String

        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var latitude: Double

        public var companyId: Int

        public var fulfillmentChannel: String

        public var pincode: String

        public var mallName: String?

        public var sId: String

        public var contactPerson: String

        public var updatedAt: String?

        public var alohomoraUserId: Int?

        public var country: String

        public var brandStoreTags: [String]?

        public var phone: Int

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case locationType = "location_type"

            case isArchived = "is_archived"

            case code

            case brandId = "brand_id"

            case mallArea = "mall_area"

            case state

            case vatNo = "vat_no"

            case city

            case longitude

            case loginUsername = "login_username"

            case packagingMaterialCount = "packaging_material_count"

            case storeAddressJson = "store_address_json"

            case meta

            case address1

            case parentStoreId = "parent_store_id"

            case name

            case storeEmail = "store_email"

            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case latitude

            case companyId = "company_id"

            case fulfillmentChannel = "fulfillment_channel"

            case pincode

            case mallName = "mall_name"

            case sId = "s_id"

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case alohomoraUserId = "alohomora_user_id"

            case country

            case brandStoreTags = "brand_store_tags"

            case phone

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address2 = address2

            self.locationType = locationType

            self.isArchived = isArchived

            self.code = code

            self.brandId = brandId

            self.mallArea = mallArea

            self.state = state

            self.vatNo = vatNo

            self.city = city

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.packagingMaterialCount = packagingMaterialCount

            self.storeAddressJson = storeAddressJson

            self.meta = meta

            self.address1 = address1

            self.parentStoreId = parentStoreId

            self.name = name

            self.storeEmail = storeEmail

            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.latitude = latitude

            self.companyId = companyId

            self.fulfillmentChannel = fulfillmentChannel

            self.pincode = pincode

            self.mallName = mallName

            self.sId = sId

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.alohomoraUserId = alohomoraUserId

            self.country = country

            self.brandStoreTags = brandStoreTags

            self.phone = phone

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
