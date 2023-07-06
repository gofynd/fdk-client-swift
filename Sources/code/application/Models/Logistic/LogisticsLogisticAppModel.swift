

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: Logistics
         Used By: Logistic
     */
    class Logistics: Codable {
        public var dp: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dp
        }

        public init(dp: [String: Any]? = nil) {
            self.dp = dp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dp = try container.decode([String: Any].self, forKey: .dp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dp, forKey: .dp)
        }
    }
}
