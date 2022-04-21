

import Foundation
public extension PlatformClient {
    /*
         Model: FilterOrderingStoreRequest
         Used By: Configuration
     */

    class FilterOrderingStoreRequest: Codable {
        public var allStores: Bool?

        public var deployedStores: [Int]?

        public var q: String?

        public enum CodingKeys: String, CodingKey {
            case allStores = "all_stores"

            case deployedStores = "deployed_stores"

            case q
        }

        public init(allStores: Bool? = nil, deployedStores: [Int]? = nil, q: String? = nil) {
            self.allStores = allStores

            self.deployedStores = deployedStores

            self.q = q
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allStores = try container.decode(Bool.self, forKey: .allStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deployedStores = try container.decode([Int].self, forKey: .deployedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                q = try container.decode(String.self, forKey: .q)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStores, forKey: .allStores)

            try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)

            try? container.encodeIfPresent(q, forKey: .q)
        }
    }
}
