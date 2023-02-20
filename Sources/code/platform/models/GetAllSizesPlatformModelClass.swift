

import Foundation
public extension PlatformClient {
    /*
         Model: GetAllSizes
         Used By: Catalog
     */

    class GetAllSizes: Codable {
        public var allSizes: [AllSizes]?

        public enum CodingKeys: String, CodingKey {
            case allSizes = "all_sizes"
        }

        public init(allSizes: [AllSizes]? = nil) {
            self.allSizes = allSizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allSizes = try container.decode([AllSizes].self, forKey: .allSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)
        }
    }
}
