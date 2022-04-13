import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var storeIds: [Int]

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var platform: String

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var optLevel: String

        public var createdOn: Int

        public var enabled: Bool

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case platform

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case createdOn = "created_on"

            case enabled

            case companyId = "company_id"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]?, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]?, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.storeIds = storeIds

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.platform = platform

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.optLevel = optLevel

            self.createdOn = createdOn

            self.enabled = enabled

            self.companyId = companyId
        }

        public func duplicate() -> CompanyOptIn {
            let dict = self.dictionary!
            let copy = CompanyOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
