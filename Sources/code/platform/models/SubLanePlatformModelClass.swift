

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Orders
     */

    class SubLane: Codable {
        public var text: String

        public var totalShipments: Int

        public var value: String

        public var nextState: [String]?

        public var index: Int

        public var currentState: [String]?

        public enum CodingKeys: String, CodingKey {
            case text

            case totalShipments = "total_shipments"

            case value

            case nextState = "next_state"

            case index

            case currentState = "current_state"
        }

        public init(currentState: [String]? = nil, index: Int, nextState: [String]? = nil, text: String, totalShipments: Int, value: String) {
            self.text = text

            self.totalShipments = totalShipments

            self.value = value

            self.nextState = nextState

            self.index = index

            self.currentState = currentState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)

            value = try container.decode(String.self, forKey: .value)

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            index = try container.decode(Int.self, forKey: .index)

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(currentState, forKey: .currentState)
        }
    }
}