

import Foundation
public extension PlatformClient {
    /*
         Model: OptInPostRequest
         Used By: Catalog
     */

    class OptInPostRequest: Codable {
        public var brandIds: [Int]?

        public var companyId: Int?

        public var storeIds: [Int]?

        public var platform: String?

        public var optLevel: String

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case companyId = "company_id"

            case storeIds = "store_ids"

            case platform

            case optLevel = "opt_level"

            case enabled
        }

        public init(brandIds: [Int]? = nil, companyId: Int? = nil, enabled: Bool? = nil, optLevel: String, platform: String? = nil, storeIds: [Int]? = nil) {
            self.brandIds = brandIds

            self.companyId = companyId

            self.storeIds = storeIds

            self.platform = platform

            self.optLevel = optLevel

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

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
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
