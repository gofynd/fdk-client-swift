

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var fulfillmentChannel: String

        public var storeAddressJson: StoreAddress?

        public var storeActiveFrom: String?

        public var country: String

        public var brandId: [String: Any]?

        public var code: String?

        public var contactPerson: String

        public var latitude: Double

        public var name: String

        public var state: String

        public var storeEmail: String

        public var packagingMaterialCount: Int?

        public var city: String

        public var address2: String?

        public var createdAt: String

        public var companyId: Int

        public var isActive: Bool?

        public var loginUsername: String

        public var parentStoreId: Int?

        public var locationType: String

        public var meta: StoreMeta

        public var mallName: String?

        public var updatedAt: String?

        public var mallArea: String?

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var phone: Int

        public var sId: String

        public var isArchived: Bool?

        public var isEnabledForRecon: Bool?

        public var alohomoraUserId: Int?

        public var longitude: Double

        public var vatNo: String?

        public var pincode: String

        public var address1: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case storeAddressJson = "store_address_json"

            case storeActiveFrom = "store_active_from"

            case country

            case brandId = "brand_id"

            case code

            case contactPerson = "contact_person"

            case latitude

            case name

            case state

            case storeEmail = "store_email"

            case packagingMaterialCount = "packaging_material_count"

            case city

            case address2

            case createdAt = "created_at"

            case companyId = "company_id"

            case isActive = "is_active"

            case loginUsername = "login_username"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case meta

            case mallName = "mall_name"

            case updatedAt = "updated_at"

            case mallArea = "mall_area"

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case phone

            case sId = "s_id"

            case isArchived = "is_archived"

            case isEnabledForRecon = "is_enabled_for_recon"

            case alohomoraUserId = "alohomora_user_id"

            case longitude

            case vatNo = "vat_no"

            case pincode

            case address1
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.fulfillmentChannel = fulfillmentChannel

            self.storeAddressJson = storeAddressJson

            self.storeActiveFrom = storeActiveFrom

            self.country = country

            self.brandId = brandId

            self.code = code

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.name = name

            self.state = state

            self.storeEmail = storeEmail

            self.packagingMaterialCount = packagingMaterialCount

            self.city = city

            self.address2 = address2

            self.createdAt = createdAt

            self.companyId = companyId

            self.isActive = isActive

            self.loginUsername = loginUsername

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.meta = meta

            self.mallName = mallName

            self.updatedAt = updatedAt

            self.mallArea = mallArea

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.phone = phone

            self.sId = sId

            self.isArchived = isArchived

            self.isEnabledForRecon = isEnabledForRecon

            self.alohomoraUserId = alohomoraUserId

            self.longitude = longitude

            self.vatNo = vatNo

            self.pincode = pincode

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }
}
