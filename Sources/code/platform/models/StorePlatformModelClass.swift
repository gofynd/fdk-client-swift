

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var mallArea: String?

        public var brandStoreTags: [String]?

        public var mallName: String?

        public var vatNo: String?

        public var phone: Int

        public var loginUsername: String

        public var latitude: Double

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var brandId: [String: Any]?

        public var longitude: Double

        public var sId: String

        public var address2: String?

        public var isActive: Bool?

        public var alohomoraUserId: Int?

        public var code: String?

        public var name: String

        public var storeActiveFrom: String?

        public var address1: String

        public var meta: StoreMeta

        public var createdAt: String

        public var locationType: String

        public var isEnabledForRecon: Bool?

        public var orderIntegrationId: String?

        public var country: String

        public var storeEmail: String

        public var parentStoreId: Int?

        public var state: String

        public var city: String

        public var fulfillmentChannel: String

        public var pincode: String

        public var storeAddressJson: StoreAddress?

        public var companyId: Int

        public var updatedAt: String?

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case mallArea = "mall_area"

            case brandStoreTags = "brand_store_tags"

            case mallName = "mall_name"

            case vatNo = "vat_no"

            case phone

            case loginUsername = "login_username"

            case latitude

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case brandId = "brand_id"

            case longitude

            case sId = "s_id"

            case address2

            case isActive = "is_active"

            case alohomoraUserId = "alohomora_user_id"

            case code

            case name

            case storeActiveFrom = "store_active_from"

            case address1

            case meta

            case createdAt = "created_at"

            case locationType = "location_type"

            case isEnabledForRecon = "is_enabled_for_recon"

            case orderIntegrationId = "order_integration_id"

            case country

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case state

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case pincode

            case storeAddressJson = "store_address_json"

            case companyId = "company_id"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.mallArea = mallArea

            self.brandStoreTags = brandStoreTags

            self.mallName = mallName

            self.vatNo = vatNo

            self.phone = phone

            self.loginUsername = loginUsername

            self.latitude = latitude

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.brandId = brandId

            self.longitude = longitude

            self.sId = sId

            self.address2 = address2

            self.isActive = isActive

            self.alohomoraUserId = alohomoraUserId

            self.code = code

            self.name = name

            self.storeActiveFrom = storeActiveFrom

            self.address1 = address1

            self.meta = meta

            self.createdAt = createdAt

            self.locationType = locationType

            self.isEnabledForRecon = isEnabledForRecon

            self.orderIntegrationId = orderIntegrationId

            self.country = country

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.state = state

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.companyId = companyId

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            phone = try container.decode(Int.self, forKey: .phone)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            country = try container.decode(String.self, forKey: .country)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
