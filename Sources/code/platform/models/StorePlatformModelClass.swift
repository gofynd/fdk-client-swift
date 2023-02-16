

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var address1: String

        public var state: String

        public var companyId: Int

        public var locationType: String

        public var loginUsername: String

        public var isActive: Bool?

        public var meta: StoreMeta

        public var packagingMaterialCount: Int?

        public var storeAddressJson: StoreAddress?

        public var isEnabledForRecon: Bool?

        public var contactPerson: String

        public var phone: Int

        public var vatNo: String?

        public var storeEmail: String

        public var sId: String

        public var orderIntegrationId: String?

        public var brandStoreTags: [String]?

        public var isArchived: Bool?

        public var updatedAt: String?

        public var address2: String?

        public var fulfillmentChannel: String

        public var storeActiveFrom: String?

        public var code: String?

        public var name: String

        public var mallArea: String?

        public var parentStoreId: Int?

        public var country: String

        public var createdAt: String

        public var pincode: String

        public var longitude: Double

        public var city: String

        public var brandId: [String: Any]?

        public var alohomoraUserId: Int?

        public var latitude: Double

        public var mallName: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case state

            case companyId = "company_id"

            case locationType = "location_type"

            case loginUsername = "login_username"

            case isActive = "is_active"

            case meta

            case packagingMaterialCount = "packaging_material_count"

            case storeAddressJson = "store_address_json"

            case isEnabledForRecon = "is_enabled_for_recon"

            case contactPerson = "contact_person"

            case phone

            case vatNo = "vat_no"

            case storeEmail = "store_email"

            case sId = "s_id"

            case orderIntegrationId = "order_integration_id"

            case brandStoreTags = "brand_store_tags"

            case isArchived = "is_archived"

            case updatedAt = "updated_at"

            case address2

            case fulfillmentChannel = "fulfillment_channel"

            case storeActiveFrom = "store_active_from"

            case code

            case name

            case mallArea = "mall_area"

            case parentStoreId = "parent_store_id"

            case country

            case createdAt = "created_at"

            case pincode

            case longitude

            case city

            case brandId = "brand_id"

            case alohomoraUserId = "alohomora_user_id"

            case latitude

            case mallName = "mall_name"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.address1 = address1

            self.state = state

            self.companyId = companyId

            self.locationType = locationType

            self.loginUsername = loginUsername

            self.isActive = isActive

            self.meta = meta

            self.packagingMaterialCount = packagingMaterialCount

            self.storeAddressJson = storeAddressJson

            self.isEnabledForRecon = isEnabledForRecon

            self.contactPerson = contactPerson

            self.phone = phone

            self.vatNo = vatNo

            self.storeEmail = storeEmail

            self.sId = sId

            self.orderIntegrationId = orderIntegrationId

            self.brandStoreTags = brandStoreTags

            self.isArchived = isArchived

            self.updatedAt = updatedAt

            self.address2 = address2

            self.fulfillmentChannel = fulfillmentChannel

            self.storeActiveFrom = storeActiveFrom

            self.code = code

            self.name = name

            self.mallArea = mallArea

            self.parentStoreId = parentStoreId

            self.country = country

            self.createdAt = createdAt

            self.pincode = pincode

            self.longitude = longitude

            self.city = city

            self.brandId = brandId

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude

            self.mallName = mallName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            companyId = try container.decode(Int.self, forKey: .companyId)

            locationType = try container.decode(String.self, forKey: .locationType)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

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

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            pincode = try container.decode(String.self, forKey: .pincode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(mallName, forKey: .mallName)
        }
    }
}
