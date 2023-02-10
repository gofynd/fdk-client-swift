

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var brandId: [String: Any]?

        public var latitude: Double

        public var orderIntegrationId: String?

        public var fulfillmentChannel: String

        public var parentStoreId: Int?

        public var mallName: String?

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var isEnabledForRecon: Bool?

        public var storeEmail: String

        public var updatedAt: String?

        public var phone: Int

        public var isActive: Bool?

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var city: String

        public var mallArea: String?

        public var isArchived: Bool?

        public var state: String

        public var address1: String

        public var locationType: String

        public var meta: StoreMeta

        public var code: String?

        public var name: String

        public var address2: String?

        public var brandStoreTags: [String]?

        public var vatNo: String?

        public var contactPerson: String

        public var country: String

        public var createdAt: String

        public var storeActiveFrom: String?

        public var companyId: Int

        public var loginUsername: String

        public var pincode: String

        public var packagingMaterialCount: Int?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case latitude

            case orderIntegrationId = "order_integration_id"

            case fulfillmentChannel = "fulfillment_channel"

            case parentStoreId = "parent_store_id"

            case mallName = "mall_name"

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeEmail = "store_email"

            case updatedAt = "updated_at"

            case phone

            case isActive = "is_active"

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case city

            case mallArea = "mall_area"

            case isArchived = "is_archived"

            case state

            case address1

            case locationType = "location_type"

            case meta

            case code

            case name

            case address2

            case brandStoreTags = "brand_store_tags"

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case country

            case createdAt = "created_at"

            case storeActiveFrom = "store_active_from"

            case companyId = "company_id"

            case loginUsername = "login_username"

            case pincode

            case packagingMaterialCount = "packaging_material_count"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.brandId = brandId

            self.latitude = latitude

            self.orderIntegrationId = orderIntegrationId

            self.fulfillmentChannel = fulfillmentChannel

            self.parentStoreId = parentStoreId

            self.mallName = mallName

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.isEnabledForRecon = isEnabledForRecon

            self.storeEmail = storeEmail

            self.updatedAt = updatedAt

            self.phone = phone

            self.isActive = isActive

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.city = city

            self.mallArea = mallArea

            self.isArchived = isArchived

            self.state = state

            self.address1 = address1

            self.locationType = locationType

            self.meta = meta

            self.code = code

            self.name = name

            self.address2 = address2

            self.brandStoreTags = brandStoreTags

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.country = country

            self.createdAt = createdAt

            self.storeActiveFrom = storeActiveFrom

            self.companyId = companyId

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.packagingMaterialCount = packagingMaterialCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            sId = try container.decode(String.self, forKey: .sId)

            city = try container.decode(String.self, forKey: .city)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            locationType = try container.decode(String.self, forKey: .locationType)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
        }
    }
}
