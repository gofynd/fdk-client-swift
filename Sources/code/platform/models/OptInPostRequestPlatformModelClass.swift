

import Foundation
public extension PlatformClient {
    /*
         Model: OptInPostRequest
         Used By: Catalog
     */

    class OptInPostRequest: Codable {
        public var brandIds: [Int]?

        public var optLevel: String

        public var storeIds: [Int]?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case storeIds = "store_ids"

            case enabled
        }

        public init(brandIds: [Int]? = nil, enabled: Bool? = nil, optLevel: String, storeIds: [Int]? = nil) {
            self.brandIds = brandIds

            self.optLevel = optLevel

            self.storeIds = storeIds

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

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
