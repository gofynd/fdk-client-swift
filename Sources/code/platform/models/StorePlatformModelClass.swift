

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var storeActiveFrom: String?

        public var meta: StoreMeta

        public var loginUsername: String

        public var vatNo: String?

        public var state: String

        public var sId: String

        public var phone: Int

        public var isEnabledForRecon: Bool?

        public var country: String

        public var storeEmail: String

        public var address1: String

        public var packagingMaterialCount: Int?

        public var alohomoraUserId: Int?

        public var latitude: Double

        public var companyId: Int

        public var pincode: String

        public var updatedAt: String?

        public var createdAt: String

        public var contactPerson: String

        public var brandId: [String: Any]?

        public var longitude: Double

        public var orderIntegrationId: String?

        public var parentStoreId: Int?

        public var isActive: Bool?

        public var isArchived: Bool?

        public var mallArea: String?

        public var locationType: String

        public var storeAddressJson: StoreAddress?

        public var city: String

        public var fulfillmentChannel: String

        public var address2: String?

        public var code: String?

        public var mallName: String?

        public var name: String

        public var brandStoreTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case storeActiveFrom = "store_active_from"

            case meta

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case state

            case sId = "s_id"

            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case country

            case storeEmail = "store_email"

            case address1

            case packagingMaterialCount = "packaging_material_count"

            case alohomoraUserId = "alohomora_user_id"

            case latitude

            case companyId = "company_id"

            case pincode

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case brandId = "brand_id"

            case longitude

            case orderIntegrationId = "order_integration_id"

            case parentStoreId = "parent_store_id"

            case isActive = "is_active"

            case isArchived = "is_archived"

            case mallArea = "mall_area"

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case address2

            case code

            case mallName = "mall_name"

            case name

            case brandStoreTags = "brand_store_tags"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeActiveFrom = storeActiveFrom

            self.meta = meta

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.state = state

            self.sId = sId

            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.country = country

            self.storeEmail = storeEmail

            self.address1 = address1

            self.packagingMaterialCount = packagingMaterialCount

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude

            self.companyId = companyId

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.brandId = brandId

            self.longitude = longitude

            self.orderIntegrationId = orderIntegrationId

            self.parentStoreId = parentStoreId

            self.isActive = isActive

            self.isArchived = isArchived

            self.mallArea = mallArea

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.address2 = address2

            self.code = code

            self.mallName = mallName

            self.name = name

            self.brandStoreTags = brandStoreTags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            sId = try container.decode(String.self, forKey: .sId)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
        }
    }
}
