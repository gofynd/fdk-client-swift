

import Foundation
public extension PlatformClient {
    /*
         Model: Store1
         Used By: Order
     */

    class Store1: Codable {
        public var isActive: Bool?

        public var storeActiveFrom: String?

        public var parentStoreId: Int?

        public var phone: Int

        public var mallArea: String?

        public var alohomoraUserId: Int?

        public var updatedAt: String?

        public var name: String

        public var brandStoreTags: [String]?

        public var orderIntegrationId: String?

        public var vatNo: String?

        public var country: String

        public var mallName: String?

        public var address1: String

        public var code: String?

        public var locationType: String

        public var storeEmail: String

        public var meta: StoreMeta

        public var contactPerson: String

        public var address2: String?

        public var companyId: Int

        public var createdAt: String

        public var state: String

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var brandId: [String: Any]?

        public var loginUsername: String

        public var isArchived: Bool?

        public var latitude: Double

        public var sId: String

        public var storeAddressJson: StoreAddress?

        public var longitude: Double

        public var pincode: String

        public var isEnabledForRecon: Bool?

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case storeActiveFrom = "store_active_from"

            case parentStoreId = "parent_store_id"

            case phone

            case mallArea = "mall_area"

            case alohomoraUserId = "alohomora_user_id"

            case updatedAt = "updated_at"

            case name

            case brandStoreTags = "brand_store_tags"

            case orderIntegrationId = "order_integration_id"

            case vatNo = "vat_no"

            case country

            case mallName = "mall_name"

            case address1

            case code

            case locationType = "location_type"

            case storeEmail = "store_email"

            case meta

            case contactPerson = "contact_person"

            case address2

            case companyId = "company_id"

            case createdAt = "created_at"

            case state

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case brandId = "brand_id"

            case loginUsername = "login_username"

            case isArchived = "is_archived"

            case latitude

            case sId = "s_id"

            case storeAddressJson = "store_address_json"

            case longitude

            case pincode

            case isEnabledForRecon = "is_enabled_for_recon"

            case city
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.isActive = isActive

            self.storeActiveFrom = storeActiveFrom

            self.parentStoreId = parentStoreId

            self.phone = phone

            self.mallArea = mallArea

            self.alohomoraUserId = alohomoraUserId

            self.updatedAt = updatedAt

            self.name = name

            self.brandStoreTags = brandStoreTags

            self.orderIntegrationId = orderIntegrationId

            self.vatNo = vatNo

            self.country = country

            self.mallName = mallName

            self.address1 = address1

            self.code = code

            self.locationType = locationType

            self.storeEmail = storeEmail

            self.meta = meta

            self.contactPerson = contactPerson

            self.address2 = address2

            self.companyId = companyId

            self.createdAt = createdAt

            self.state = state

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.brandId = brandId

            self.loginUsername = loginUsername

            self.isArchived = isArchived

            self.latitude = latitude

            self.sId = sId

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.pincode = pincode

            self.isEnabledForRecon = isEnabledForRecon

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            name = try container.decode(String.self, forKey: .name)

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

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
