

import Foundation
public extension ApplicationClient {
    /*
         Model: LogisticResponseCategory
         Used By: Logistic
     */
    class LogisticResponseCategory: Codable {
        public var id: Int?

        public var level: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case level
        }

        public init(id: Int? = nil, level: String? = nil) {
            self.id = id

            self.level = level
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(level, forKey: .level)
        }
    }
}
