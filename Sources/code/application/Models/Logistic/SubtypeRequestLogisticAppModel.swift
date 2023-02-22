

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: SubtypeRequest
         Used By: Logistic
     */
    class SubtypeRequest: Codable {
        public var subType: String?

        public enum CodingKeys: String, CodingKey {
            case subType = "sub_type"
        }

        public init(subType: String? = nil) {
            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}
