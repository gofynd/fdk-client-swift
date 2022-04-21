

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformFulfillingStore
         Used By: Order
     */

    class PlatformFulfillingStore: Codable {
        public var packagingMaterialCount: Int?

        public var locationType: String?

        public var code: String?

        public var city: String?

        public var meta: FulfillingStoreMeta?

        public var name: String?

        public var isActive: Bool?

        public var address1: String?

        public var storeEmail: String?

        public var isArchived: Bool?

        public var state: String?

        public var address2: String?

        public var contactPerson: String?

        public var phone: String?

        public var isEnabledForRecon: Bool?

        public var fulfillmentChannel: String?

        public var createdAt: String?

        public var id: Int?

        public var pincode: String?

        public var brandStoreTags: [String]?

        public var companyId: Int?

        public var storeAddressJson: FulfillingStoreStoreAddressJson?

        public var updatedAt: String?

        public var loginUsername: String?

        public var country: String?

        public enum CodingKeys: String, CodingKey {
            case packagingMaterialCount = "packaging_material_count"

            case locationType = "location_type"

            case code

            case city

            case meta

            case name

            case isActive = "is_active"

            case address1

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case state

            case address2

            case contactPerson = "contact_person"

            case phone

            case isEnabledForRecon = "is_enabled_for_recon"

            case fulfillmentChannel = "fulfillment_channel"

            case createdAt = "created_at"

            case id

            case pincode

            case brandStoreTags = "brand_store_tags"

            case companyId = "company_id"

            case storeAddressJson = "store_address_json"

            case updatedAt = "updated_at"

            case loginUsername = "login_username"

            case country
        }

        public init(address1: String? = nil, address2: String? = nil, brandStoreTags: [String]? = nil, city: String? = nil, code: String? = nil, companyId: Int? = nil, contactPerson: String? = nil, country: String? = nil, createdAt: String? = nil, fulfillmentChannel: String? = nil, id: Int? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, locationType: String? = nil, loginUsername: String? = nil, meta: FulfillingStoreMeta? = nil, name: String? = nil, packagingMaterialCount: Int? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeAddressJson: FulfillingStoreStoreAddressJson? = nil, storeEmail: String? = nil, updatedAt: String? = nil) {
            self.packagingMaterialCount = packagingMaterialCount

            self.locationType = locationType

            self.code = code

            self.city = city

            self.meta = meta

            self.name = name

            self.isActive = isActive

            self.address1 = address1

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.state = state

            self.address2 = address2

            self.contactPerson = contactPerson

            self.phone = phone

            self.isEnabledForRecon = isEnabledForRecon

            self.fulfillmentChannel = fulfillmentChannel

            self.createdAt = createdAt

            self.id = id

            self.pincode = pincode

            self.brandStoreTags = brandStoreTags

            self.companyId = companyId

            self.storeAddressJson = storeAddressJson

            self.updatedAt = updatedAt

            self.loginUsername = loginUsername

            self.country = country
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
                locationType = try container.decode(String.self, forKey: .locationType)

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
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(FulfillingStoreMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

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
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

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
                state = try container.decode(String.self, forKey: .state)

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
                contactPerson = try container.decode(String.self, forKey: .contactPerson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

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
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddressJson = try container.decode(FulfillingStoreStoreAddressJson.self, forKey: .storeAddressJson)

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
                loginUsername = try container.decode(String.self, forKey: .loginUsername)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
