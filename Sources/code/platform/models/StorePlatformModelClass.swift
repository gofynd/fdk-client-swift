

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var createdAt: String

        public var address1: String

        public var orderIntegrationId: String?

        public var city: String

        public var name: String

        public var pincode: String

        public var brandStoreTags: [String]?

        public var state: String

        public var sId: String

        public var phone: Int

        public var mallArea: String?

        public var code: String?

        public var isEnabledForRecon: Bool?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var mallName: String?

        public var alohomoraUserId: Int?

        public var country: String

        public var locationType: String

        public var storeEmail: String

        public var longitude: Double

        public var loginUsername: String

        public var fulfillmentChannel: String

        public var isActive: Bool?

        public var parentStoreId: Int?

        public var isArchived: Bool?

        public var packagingMaterialCount: Int?

        public var latitude: Double

        public var storeAddressJson: StoreAddress?

        public var brandId: [String: Any]?

        public var contactPerson: String

        public var vatNo: String?

        public var address2: String?

        public var meta: StoreMeta

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case address1

            case orderIntegrationId = "order_integration_id"

            case city

            case name

            case pincode

            case brandStoreTags = "brand_store_tags"

            case state

            case sId = "s_id"

            case phone

            case mallArea = "mall_area"

            case code

            case isEnabledForRecon = "is_enabled_for_recon"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case mallName = "mall_name"

            case alohomoraUserId = "alohomora_user_id"

            case country

            case locationType = "location_type"

            case storeEmail = "store_email"

            case longitude

            case loginUsername = "login_username"

            case fulfillmentChannel = "fulfillment_channel"

            case isActive = "is_active"

            case parentStoreId = "parent_store_id"

            case isArchived = "is_archived"

            case packagingMaterialCount = "packaging_material_count"

            case latitude

            case storeAddressJson = "store_address_json"

            case brandId = "brand_id"

            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case address2

            case meta

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.createdAt = createdAt

            self.address1 = address1

            self.orderIntegrationId = orderIntegrationId

            self.city = city

            self.name = name

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.state = state

            self.sId = sId

            self.phone = phone

            self.mallArea = mallArea

            self.code = code

            self.isEnabledForRecon = isEnabledForRecon

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.mallName = mallName

            self.alohomoraUserId = alohomoraUserId

            self.country = country

            self.locationType = locationType

            self.storeEmail = storeEmail

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.fulfillmentChannel = fulfillmentChannel

            self.isActive = isActive

            self.parentStoreId = parentStoreId

            self.isArchived = isArchived

            self.packagingMaterialCount = packagingMaterialCount

            self.latitude = latitude

            self.storeAddressJson = storeAddressJson

            self.brandId = brandId

            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.address2 = address2

            self.meta = meta

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            sId = try container.decode(String.self, forKey: .sId)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
