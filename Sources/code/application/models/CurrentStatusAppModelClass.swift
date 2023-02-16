

import Foundation
public extension ApplicationClient {
    /*
         Model: CurrentStatus
         Used By: Order
     */
    class CurrentStatus: Codable {
        public var updatedAt: String?

        public var status: String?

        public var name: String?

        public var journeyType: String?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case status

            case name

            case journeyType = "journey_type"
        }

        public init(journeyType: String? = nil, name: String? = nil, status: String? = nil, updatedAt: String? = nil) {
            self.updatedAt = updatedAt

            self.status = status

            self.name = name

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
                status = try container.decode(String.self, forKey: .status)

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
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
        }
    }
}
