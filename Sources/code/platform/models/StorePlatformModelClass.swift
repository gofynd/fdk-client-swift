

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var code: String?

        public var isArchived: Bool?

        public var mallName: String?

        public var isActive: Bool?

        public var address1: String

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var brandId: [String: Any]?

        public var state: String

        public var phone: Int

        public var name: String

        public var locationType: String

        public var pincode: String

        public var companyId: Int

        public var longitude: Double

        public var latitude: Double

        public var isEnabledForRecon: Bool?

        public var brandStoreTags: [String]?

        public var contactPerson: String

        public var createdAt: String

        public var storeActiveFrom: String?

        public var updatedAt: String?

        public var loginUsername: String

        public var city: String

        public var storeAddressJson: StoreAddress?

        public var packagingMaterialCount: Int?

        public var storeEmail: String

        public var parentStoreId: Int?

        public var sId: String

        public var alohomoraUserId: Int?

        public var vatNo: String?

        public var address2: String?

        public var orderIntegrationId: String?

        public var mallArea: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case code

            case isArchived = "is_archived"

            case mallName = "mall_name"

            case isActive = "is_active"

            case address1

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case brandId = "brand_id"

            case state

            case phone

            case name

            case locationType = "location_type"

            case pincode

            case companyId = "company_id"

            case longitude

            case latitude

            case isEnabledForRecon = "is_enabled_for_recon"

            case brandStoreTags = "brand_store_tags"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case storeActiveFrom = "store_active_from"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"

            case city

            case storeAddressJson = "store_address_json"

            case packagingMaterialCount = "packaging_material_count"

            case storeEmail = "store_email"

            case parentStoreId = "parent_store_id"

            case sId = "s_id"

            case alohomoraUserId = "alohomora_user_id"

            case vatNo = "vat_no"

            case address2

            case orderIntegrationId = "order_integration_id"

            case mallArea = "mall_area"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.code = code

            self.isArchived = isArchived

            self.mallName = mallName

            self.isActive = isActive

            self.address1 = address1

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.brandId = brandId

            self.state = state

            self.phone = phone

            self.name = name

            self.locationType = locationType

            self.pincode = pincode

            self.companyId = companyId

            self.longitude = longitude

            self.latitude = latitude

            self.isEnabledForRecon = isEnabledForRecon

            self.brandStoreTags = brandStoreTags

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.storeActiveFrom = storeActiveFrom

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.packagingMaterialCount = packagingMaterialCount

            self.storeEmail = storeEmail

            self.parentStoreId = parentStoreId

            self.sId = sId

            self.alohomoraUserId = alohomoraUserId

            self.vatNo = vatNo

            self.address2 = address2

            self.orderIntegrationId = orderIntegrationId

            self.mallArea = mallArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

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

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            name = try container.decode(String.self, forKey: .name)

            locationType = try container.decode(String.self, forKey: .locationType)

            pincode = try container.decode(String.self, forKey: .pincode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            city = try container.decode(String.self, forKey: .city)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                address2 = try container.decode(String.self, forKey: .address2)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(mallArea, forKey: .mallArea)
        }
    }
}
