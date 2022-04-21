

import Foundation
public extension PlatformClient {
    /*
         Model: RatingRequest
         Used By: Feedback
     */

    class RatingRequest: Codable {
        public var attributes: [String]

        public var ui: UI?

        public enum CodingKeys: String, CodingKey {
            case attributes

            case ui
        }

        public init(attributes: [String], ui: UI? = nil) {
            self.attributes = attributes

            self.ui = ui
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String].self, forKey: .attributes)

            do {
                ui = try container.decode(UI.self, forKey: .ui)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(ui, forKey: .ui)
        }
    }
}
