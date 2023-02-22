

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address2: String?

        public var createdAt: String

        public var packagingMaterialCount: Int?

        public var brandStoreTags: [String]?

        public var latitude: Double

        public var name: String

        public var orderIntegrationId: String?

        public var locationType: String

        public var state: String

        public var storeActiveFrom: String?

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var companyId: Int

        public var storeEmail: String

        public var phone: Int

        public var country: String

        public var isArchived: Bool?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var loginUsername: String

        public var contactPerson: String

        public var meta: StoreMeta

        public var updatedAt: String?

        public var sId: String

        public var vatNo: String?

        public var mallName: String?

        public var isEnabledForRecon: Bool?

        public var mallArea: String?

        public var isActive: Bool?

        public var code: String?

        public var address1: String

        public var pincode: String

        public var parentStoreId: Int?

        public var city: String

        public var storeAddressJson: StoreAddress?

        public enum CodingKeys: String, CodingKey {
            case address2

            case createdAt = "created_at"

            case packagingMaterialCount = "packaging_material_count"

            case brandStoreTags = "brand_store_tags"

            case latitude

            case name

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case state

            case storeActiveFrom = "store_active_from"

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case companyId = "company_id"

            case storeEmail = "store_email"

            case phone

            case country

            case isArchived = "is_archived"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case loginUsername = "login_username"

            case contactPerson = "contact_person"

            case meta

            case updatedAt = "updated_at"

            case sId = "s_id"

            case vatNo = "vat_no"

            case mallName = "mall_name"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallArea = "mall_area"

            case isActive = "is_active"

            case code

            case address1

            case pincode

            case parentStoreId = "parent_store_id"

            case city

            case storeAddressJson = "store_address_json"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address2 = address2

            self.createdAt = createdAt

            self.packagingMaterialCount = packagingMaterialCount

            self.brandStoreTags = brandStoreTags

            self.latitude = latitude

            self.name = name

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.state = state

            self.storeActiveFrom = storeActiveFrom

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.companyId = companyId

            self.storeEmail = storeEmail

            self.phone = phone

            self.country = country

            self.isArchived = isArchived

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.loginUsername = loginUsername

            self.contactPerson = contactPerson

            self.meta = meta

            self.updatedAt = updatedAt

            self.sId = sId

            self.vatNo = vatNo

            self.mallName = mallName

            self.isEnabledForRecon = isEnabledForRecon

            self.mallArea = mallArea

            self.isActive = isActive

            self.code = code

            self.address1 = address1

            self.pincode = pincode

            self.parentStoreId = parentStoreId

            self.city = city

            self.storeAddressJson = storeAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            state = try container.decode(String.self, forKey: .state)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
        }
    }
}
