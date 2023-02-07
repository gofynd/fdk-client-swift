

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var phone: Int

        public var fulfillmentChannel: String

        public var companyId: Int

        public var storeActiveFrom: String?

        public var orderIntegrationId: String?

        public var alohomoraUserId: Int?

        public var city: String

        public var latitude: Double

        public var name: String

        public var vatNo: String?

        public var parentStoreId: Int?

        public var packagingMaterialCount: Int?

        public var locationType: String

        public var meta: StoreMeta

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var country: String

        public var createdAt: String

        public var storeAddressJson: StoreAddress?

        public var state: String

        public var code: String?

        public var isArchived: Bool?

        public var sId: String

        public var mallName: String?

        public var storeEmail: String

        public var isActive: Bool?

        public var brandStoreTags: [String]?

        public var mallArea: String?

        public var isEnabledForRecon: Bool?

        public var loginUsername: String

        public var longitude: Double

        public var address2: String?

        public var address1: String

        public var pincode: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case fulfillmentChannel = "fulfillment_channel"

            case companyId = "company_id"

            case storeActiveFrom = "store_active_from"

            case orderIntegrationId = "order_integration_id"

            case alohomoraUserId = "alohomora_user_id"

            case city

            case latitude

            case name

            case vatNo = "vat_no"

            case parentStoreId = "parent_store_id"

            case packagingMaterialCount = "packaging_material_count"

            case locationType = "location_type"

            case meta

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case country

            case createdAt = "created_at"

            case storeAddressJson = "store_address_json"

            case state

            case code

            case isArchived = "is_archived"

            case sId = "s_id"

            case mallName = "mall_name"

            case storeEmail = "store_email"

            case isActive = "is_active"

            case brandStoreTags = "brand_store_tags"

            case mallArea = "mall_area"

            case isEnabledForRecon = "is_enabled_for_recon"

            case loginUsername = "login_username"

            case longitude

            case address2

            case address1

            case pincode

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.phone = phone

            self.fulfillmentChannel = fulfillmentChannel

            self.companyId = companyId

            self.storeActiveFrom = storeActiveFrom

            self.orderIntegrationId = orderIntegrationId

            self.alohomoraUserId = alohomoraUserId

            self.city = city

            self.latitude = latitude

            self.name = name

            self.vatNo = vatNo

            self.parentStoreId = parentStoreId

            self.packagingMaterialCount = packagingMaterialCount

            self.locationType = locationType

            self.meta = meta

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.country = country

            self.createdAt = createdAt

            self.storeAddressJson = storeAddressJson

            self.state = state

            self.code = code

            self.isArchived = isArchived

            self.sId = sId

            self.mallName = mallName

            self.storeEmail = storeEmail

            self.isActive = isActive

            self.brandStoreTags = brandStoreTags

            self.mallArea = mallArea

            self.isEnabledForRecon = isEnabledForRecon

            self.loginUsername = loginUsername

            self.longitude = longitude

            self.address2 = address2

            self.address1 = address1

            self.pincode = pincode

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            sId = try container.decode(String.self, forKey: .sId)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
