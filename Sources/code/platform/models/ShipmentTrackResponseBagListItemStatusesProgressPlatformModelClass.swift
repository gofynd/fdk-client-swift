

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackResponseBagListItemStatusesProgress
         Used By: Order
     */

    class ShipmentTrackResponseBagListItemStatusesProgress: Codable {
        public var title: String?

        public var type: String?

        public var state: Bool?

        public enum CodingKeys: String, CodingKey {
            case title

            case type

            case state
        }

        public init(state: Bool? = nil, title: String? = nil, type: String? = nil) {
            self.title = title

            self.type = type

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(Bool.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
