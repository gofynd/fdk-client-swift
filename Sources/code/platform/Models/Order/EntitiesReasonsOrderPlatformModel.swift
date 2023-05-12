

import Foundation

public extension PlatformClient.Order {
    /*
         Model: EntitiesReasons
         Used By: Order
     */

    class EntitiesReasons: Codable {
        public var data: EntityReasonData?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: EntityReasonData? = nil) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(EntityReasonData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: EntitiesReasons
         Used By: Order
     */

    class EntitiesReasons: Codable {
        public var data: EntityReasonData?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: EntityReasonData? = nil) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(EntityReasonData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
