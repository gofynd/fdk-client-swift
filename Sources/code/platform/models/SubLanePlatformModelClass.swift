

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Orders
     */

    class SubLane: Codable {
        public var index: Int

        public var displayName: String

        public var totalShipments: Int

        public var currentState: [String]?

        public var nextState: [String]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case index

            case displayName = "display_name"

            case totalShipments = "total_shipments"

            case currentState = "current_state"

            case nextState = "next_state"

            case name
        }

        public init(currentState: [String]? = nil, displayName: String, index: Int, name: String, nextState: [String]? = nil, totalShipments: Int) {
            self.index = index

            self.displayName = displayName

            self.totalShipments = totalShipments

            self.currentState = currentState

            self.nextState = nextState

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            index = try container.decode(Int.self, forKey: .index)

            displayName = try container.decode(String.self, forKey: .displayName)

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
