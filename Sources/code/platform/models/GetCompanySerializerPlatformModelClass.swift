

import Foundation
public extension PlatformClient {
    /*
         Model: GetCompanySerializer
         Used By: Catalog
     */

    class GetCompanySerializer: Codable {
        public var modifiedOn: String?

        public var createdBy: UserSerializer2?

        public var stage: String?

        public var companyType: String?

        public var name: String?

        public var businessType: String?

        public var verifiedBy: UserSerializer2?

        public var rejectReason: String?

        public var uid: Int?

        public var addresses: [GetAddressSerializer]?

        public var createdOn: String?

        public var verifiedOn: String?

        public var modifiedBy: UserSerializer2?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case stage

            case companyType = "company_type"

            case name

            case businessType = "business_type"

            case verifiedBy = "verified_by"

            case rejectReason = "reject_reason"

            case uid

            case addresses

            case createdOn = "created_on"

            case verifiedOn = "verified_on"

            case modifiedBy = "modified_by"
        }

        public init(addresses: [GetAddressSerializer]? = nil, businessType: String? = nil, companyType: String? = nil, createdBy: UserSerializer2? = nil, createdOn: String? = nil, modifiedBy: UserSerializer2? = nil, modifiedOn: String? = nil, name: String? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, verifiedBy: UserSerializer2? = nil, verifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.stage = stage

            self.companyType = companyType

            self.name = name

            self.businessType = businessType

            self.verifiedBy = verifiedBy

            self.rejectReason = rejectReason

            self.uid = uid

            self.addresses = addresses

            self.createdOn = createdOn

            self.verifiedOn = verifiedOn

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer2.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

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
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer2.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer2.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}
