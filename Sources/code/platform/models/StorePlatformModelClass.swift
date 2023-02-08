

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var packagingMaterialCount: Int?

        public var address2: String?

        public var mallArea: String?

        public var longitude: Double

        public var sId: String

        public var phone: Int

        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var updatedAt: String?

        public var state: String

        public var alohomoraUserId: Int?

        public var isArchived: Bool?

        public var orderIntegrationId: String?

        public var fulfillmentChannel: String

        public var code: String?

        public var storeAddressJson: StoreAddress?

        public var isActive: Bool?

        public var locationType: String

        public var name: String

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public var loginUsername: String

        public var pincode: String

        public var brandId: [String: Any]?

        public var vatNo: String?

        public var contactPerson: String

        public var createdAt: String

        public var address1: String

        public var parentStoreId: Int?

        public var brandStoreTags: [String]?

        public var country: String

        public var storeEmail: String

        public var city: String

        public var companyId: Int

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case packagingMaterialCount = "packaging_material_count"

            case address2

            case mallArea = "mall_area"

            case longitude

            case sId = "s_id"

            case phone

            case storeActiveFrom = "store_active_from"

            case meta

            case updatedAt = "updated_at"

            case state

            case alohomoraUserId = "alohomora_user_id"

            case isArchived = "is_archived"

            case orderIntegrationId = "order_integration_id"

            case fulfillmentChannel = "fulfillment_channel"

            case code

            case storeAddressJson = "store_address_json"

            case isActive = "is_active"

            case locationType = "location_type"

            case name

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"

            case loginUsername = "login_username"

            case pincode

            case brandId = "brand_id"

            case vatNo = "vat_no"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case address1

            case parentStoreId = "parent_store_id"

            case brandStoreTags = "brand_store_tags"

            case country

            case storeEmail = "store_email"

            case city

            case companyId = "company_id"

            case latitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.packagingMaterialCount = packagingMaterialCount

            self.address2 = address2

            self.mallArea = mallArea

            self.longitude = longitude

            self.sId = sId

            self.phone = phone

            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.updatedAt = updatedAt

            self.state = state

            self.alohomoraUserId = alohomoraUserId

            self.isArchived = isArchived

            self.orderIntegrationId = orderIntegrationId

            self.fulfillmentChannel = fulfillmentChannel

            self.code = code

            self.storeAddressJson = storeAddressJson

            self.isActive = isActive

            self.locationType = locationType

            self.name = name

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName

            self.loginUsername = loginUsername

            self.pincode = pincode

            self.brandId = brandId

            self.vatNo = vatNo

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.address1 = address1

            self.parentStoreId = parentStoreId

            self.brandStoreTags = brandStoreTags

            self.country = country

            self.storeEmail = storeEmail

            self.city = city

            self.companyId = companyId

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            sId = try container.decode(String.self, forKey: .sId)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                code = try container.decode(String.self, forKey: .code)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            name = try container.decode(String.self, forKey: .name)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            country = try container.decode(String.self, forKey: .country)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            city = try container.decode(String.self, forKey: .city)

            companyId = try container.decode(Int.self, forKey: .companyId)

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
