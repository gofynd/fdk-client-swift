

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var companyId: Int

        public var createdOn: Int

        public var optLevel: String

        public var enabled: Bool

        public var storeIds: [Int]

        public var platform: String

        public var modifiedBy: [String: Any]?

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdOn = "created_on"

            case optLevel = "opt_level"

            case enabled

            case storeIds = "store_ids"

            case platform

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case createdBy = "created_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.companyId = companyId

            self.createdOn = createdOn

            self.optLevel = optLevel

            self.enabled = enabled

            self.storeIds = storeIds

            self.platform = platform

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
