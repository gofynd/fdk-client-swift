

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var orderIntegrationId: String?

        public var storeActiveFrom: String?

        public var alohomoraUserId: Int?

        public var state: String

        public var longitude: Double

        public var city: String

        public var isEnabledForRecon: Bool?

        public var companyId: Int

        public var loginUsername: String

        public var parentStoreId: Int?

        public var packagingMaterialCount: Int?

        public var latitude: Double

        public var storeEmail: String

        public var fulfillmentChannel: String

        public var mallName: String?

        public var brandStoreTags: [String]?

        public var pincode: String

        public var contactPerson: String

        public var brandId: [String: Any]?

        public var meta: StoreMeta

        public var locationType: String

        public var vatNo: String?

        public var isArchived: Bool?

        public var name: String

        public var address1: String

        public var code: String?

        public var country: String

        public var createdAt: String

        public var sId: String

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var updatedAt: String?

        public var phone: Int

        public var mallArea: String?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case orderIntegrationId = "order_integration_id"

            case storeActiveFrom = "store_active_from"

            case alohomoraUserId = "alohomora_user_id"

            case state

            case longitude

            case city

            case isEnabledForRecon = "is_enabled_for_recon"

            case companyId = "company_id"

            case loginUsername = "login_username"

            case parentStoreId = "parent_store_id"

            case packagingMaterialCount = "packaging_material_count"

            case latitude

            case storeEmail = "store_email"

            case fulfillmentChannel = "fulfillment_channel"

            case mallName = "mall_name"

            case brandStoreTags = "brand_store_tags"

            case pincode

            case contactPerson = "contact_person"

            case brandId = "brand_id"

            case meta

            case locationType = "location_type"

            case vatNo = "vat_no"

            case isArchived = "is_archived"

            case name

            case address1

            case code

            case country

            case createdAt = "created_at"

            case sId = "s_id"

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case updatedAt = "updated_at"

            case phone

            case mallArea = "mall_area"

            case address2
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.orderIntegrationId = orderIntegrationId

            self.storeActiveFrom = storeActiveFrom

            self.alohomoraUserId = alohomoraUserId

            self.state = state

            self.longitude = longitude

            self.city = city

            self.isEnabledForRecon = isEnabledForRecon

            self.companyId = companyId

            self.loginUsername = loginUsername

            self.parentStoreId = parentStoreId

            self.packagingMaterialCount = packagingMaterialCount

            self.latitude = latitude

            self.storeEmail = storeEmail

            self.fulfillmentChannel = fulfillmentChannel

            self.mallName = mallName

            self.brandStoreTags = brandStoreTags

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.brandId = brandId

            self.meta = meta

            self.locationType = locationType

            self.vatNo = vatNo

            self.isArchived = isArchived

            self.name = name

            self.address1 = address1

            self.code = code

            self.country = country

            self.createdAt = createdAt

            self.sId = sId

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.updatedAt = updatedAt

            self.phone = phone

            self.mallArea = mallArea

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
