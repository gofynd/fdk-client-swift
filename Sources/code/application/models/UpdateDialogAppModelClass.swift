

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateDialog
         Used By: Configuration
     */
    class UpdateDialog: Codable {
        public var type: String?

        public var interval: Int?

        public enum CodingKeys: String, CodingKey {
            case type

            case interval
        }

        public init(interval: Int? = nil, type: String? = nil) {
            self.type = type

            self.interval = interval
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                interval = try container.decode(Int.self, forKey: .interval)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(interval, forKey: .interval)
        }
    }
}
