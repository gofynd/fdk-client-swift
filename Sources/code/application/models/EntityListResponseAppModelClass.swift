

import Foundation
public extension ApplicationClient {
    /*
         Model: EntityListResponse
         Used By: Logistic
     */
    class EntityListResponse: Codable {
        public var results: [PincodeEntityResponse]?

        public var count: Int

        public enum CodingKeys: String, CodingKey {
            case results

            case count
        }

        public init(count: Int, results: [PincodeEntityResponse]? = nil) {
            self.results = results

            self.count = count
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                results = try container.decode([PincodeEntityResponse].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            count = try container.decode(Int.self, forKey: .count)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
