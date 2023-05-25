

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: CurrentStatus
         Used By: Order
     */
    class CurrentStatus: Codable {
        public var updatedAt: String?

        public var createdAt: String?

        public var name: String?

        public var status: String?

        public var journeyType: String?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case name

            case status

            case journeyType = "journey_type"
        }

        public init(createdAt: String? = nil, journeyType: String? = nil, name: String? = nil, status: String? = nil, updatedAt: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.name = name

            self.status = status

            self.journeyType = journeyType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
        }
    }
}
