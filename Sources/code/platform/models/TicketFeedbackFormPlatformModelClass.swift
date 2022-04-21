

import Foundation
public extension PlatformClient {
    /*
         Model: TicketFeedbackForm
         Used By: Lead
     */

    class TicketFeedbackForm: Codable {
        public var title: String

        public var display: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case title

            case display
        }

        public init(display: [[String: Any]]? = nil, title: String) {
            self.title = title

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            do {
                display = try container.decode([[String: Any]].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
