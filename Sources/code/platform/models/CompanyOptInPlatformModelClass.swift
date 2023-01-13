

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var enabled: Bool

        public var modifiedBy: [String: Any]?

        public var companyId: Int

        public var brandIds: [Int]

        public var modifiedOn: Int

        public var platform: String

        public var createdBy: [String: Any]?

        public var createdOn: Int

        public var storeIds: [Int]

        public var optLevel: String

        public enum CodingKeys: String, CodingKey {
            case enabled

            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case brandIds = "brand_ids"

            case modifiedOn = "modified_on"

            case platform

            case createdBy = "created_by"

            case createdOn = "created_on"

            case storeIds = "store_ids"

            case optLevel = "opt_level"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.enabled = enabled

            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.brandIds = brandIds

            self.modifiedOn = modifiedOn

            self.platform = platform

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.storeIds = storeIds

            self.optLevel = optLevel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
        }
    }
}
