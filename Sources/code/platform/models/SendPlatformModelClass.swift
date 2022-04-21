

import Foundation
public extension PlatformClient {
    /*
         Model: Send
         Used By: Inventory
     */

    class Send: Codable {
        public var raw: Bool?

        public var processed: Bool?

        public enum CodingKeys: String, CodingKey {
            case raw

            case processed
        }

        public init(processed: Bool? = nil, raw: Bool? = nil) {
            self.raw = raw

            self.processed = processed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                raw = try container.decode(Bool.self, forKey: .raw)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processed = try container.decode(Bool.self, forKey: .processed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(raw, forKey: .raw)

            try? container.encodeIfPresent(processed, forKey: .processed)
        }
    }
}
