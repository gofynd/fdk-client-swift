import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OptInPostRequest
         Used By: Catalog
     */

    class OptInPostRequest: Codable {
        public var optLevel: String

        public var enabled: Bool?

        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case enabled

            case brandIds = "brand_ids"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]?, enabled: Bool?, optLevel: String, storeIds: [Int]?) {
            self.optLevel = optLevel

            self.enabled = enabled

            self.brandIds = brandIds

            self.storeIds = storeIds
        }

        public func duplicate() -> OptInPostRequest {
            let dict = self.dictionary!
            let copy = OptInPostRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
