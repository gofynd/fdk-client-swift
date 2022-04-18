import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: LogisticMeta
         Used By: Logistic
     */
    class LogisticMeta: Codable {
        public var zone: String?

        public var deliverables: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case zone

            case deliverables
        }

        public init(deliverables: [[String: Any]]?, zone: String?) {
            self.zone = zone

            self.deliverables = deliverables
        }

        public func duplicate() -> LogisticMeta {
            let dict = self.dictionary!
            let copy = LogisticMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                zone = try container.decode(String.self, forKey: .zone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverables = try container.decode([[String: Any]].self, forKey: .deliverables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zone, forKey: .zone)

            try? container.encodeIfPresent(deliverables, forKey: .deliverables)
        }
    }
}
