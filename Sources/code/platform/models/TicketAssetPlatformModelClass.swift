

import Foundation
public extension PlatformClient {
    /*
         Model: TicketAsset
         Used By: Lead
     */

    class TicketAsset: Codable {
        public var display: String?

        public var value: String

        public var type: TicketAssetTypeEnum

        public enum CodingKeys: String, CodingKey {
            case display

            case value

            case type
        }

        public init(display: String? = nil, type: TicketAssetTypeEnum, value: String) {
            self.display = display

            self.value = value

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(TicketAssetTypeEnum.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
