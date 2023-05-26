

import Foundation

public extension PlatformClient.ApplicationClient.Share {
    /*
         Model: ClickStatsItem
         Used By: Share
     */

    class ClickStatsItem: Codable {
        public var display: String?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case display

            case total
        }

        public init(display: String? = nil, total: Int? = nil) {
            self.display = display

            self.total = total
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }
}
