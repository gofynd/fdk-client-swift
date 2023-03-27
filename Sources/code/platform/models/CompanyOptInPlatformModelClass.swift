

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedOn: Int

        public var storeIds: [Int]

        public var enabled: Bool

        public var platform: String

        public var brandIds: [Int]

        public var companyId: Int

        public var createdBy: [String: Any]?

        public var createdOn: Int

        public var modifiedBy: [String: Any]?

        public var optLevel: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case storeIds = "store_ids"

            case enabled

            case platform

            case brandIds = "brand_ids"

            case companyId = "company_id"

            case createdBy = "created_by"

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case optLevel = "opt_level"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedOn = modifiedOn

            self.storeIds = storeIds

            self.enabled = enabled

            self.platform = platform

            self.brandIds = brandIds

            self.companyId = companyId

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.optLevel = optLevel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            platform = try container.decode(String.self, forKey: .platform)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
        }
    }
}
