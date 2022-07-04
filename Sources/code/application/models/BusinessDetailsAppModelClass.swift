

import Foundation
public extension ApplicationClient {
    /*
         Model: BusinessDetails
         Used By: Payment
     */
    class BusinessDetails: Codable {
        public var gstin: String?

        public var businessType: String?

        public var vintage: String?

        public var fssai: String?

        public var name: String?

        public var businessOwnershipType: String?

        public var entityType: String?

        public var pan: String?

        public var shopAndEstablishment: [String: Any]?

        public var fda: String?

        public var address: KYCAddress?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case businessType = "business_type"

            case vintage

            case fssai

            case name

            case businessOwnershipType = "business_ownership_type"

            case entityType = "entity_type"

            case pan

            case shopAndEstablishment = "shop_and_establishment"

            case fda

            case address
        }

        public init(address: KYCAddress? = nil, businessOwnershipType: String? = nil, businessType: String? = nil, entityType: String? = nil, fda: String? = nil, fssai: String? = nil, gstin: String? = nil, name: String? = nil, pan: String? = nil, shopAndEstablishment: [String: Any]? = nil, vintage: String? = nil) {
            self.gstin = gstin

            self.businessType = businessType

            self.vintage = vintage

            self.fssai = fssai

            self.name = name

            self.businessOwnershipType = businessOwnershipType

            self.entityType = entityType

            self.pan = pan

            self.shopAndEstablishment = shopAndEstablishment

            self.fda = fda

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vintage = try container.decode(String.self, forKey: .vintage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fssai = try container.decode(String.self, forKey: .fssai)

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
                businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fda = try container.decode(String.self, forKey: .fda)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(KYCAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encode(businessType, forKey: .businessType)

            try? container.encode(vintage, forKey: .vintage)

            try? container.encode(fssai, forKey: .fssai)

            try? container.encode(name, forKey: .name)

            try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)

            try? container.encode(entityType, forKey: .entityType)

            try? container.encode(pan, forKey: .pan)

            try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)

            try? container.encode(fda, forKey: .fda)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}