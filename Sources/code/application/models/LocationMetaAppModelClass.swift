

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationMeta
         Used By: Feedback
     */
    class LocationMeta: Codable {
        public var demand: Location?

        public var supply: Location?

        public enum CodingKeys: String, CodingKey {
            case demand

            case supply
        }

        public init(demand: Location? = nil, supply: Location? = nil) {
            self.demand = demand

            self.supply = supply
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                demand = try container.decode(Location.self, forKey: .demand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supply = try container.decode(Location.self, forKey: .supply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(demand, forKey: .demand)

            try? container.encodeIfPresent(supply, forKey: .supply)
        }
    }
}
