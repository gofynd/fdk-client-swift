

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateVoteRequest
         Used By: Feedback
     */
    class UpdateVoteRequest: Codable {
        public var action: String?

        public var active: Bool?

        public var id: String?

        public var refId: String?

        public var refType: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case active

            case id

            case refId = "ref_id"

            case refType = "ref_type"
        }

        public init(action: String? = nil, active: Bool? = nil, id: String? = nil, refId: String? = nil, refType: String? = nil) {
            self.action = action

            self.active = active

            self.id = id

            self.refId = refId

            self.refType = refType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refId = try container.decode(String.self, forKey: .refId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refType = try container.decode(String.self, forKey: .refType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refId, forKey: .refId)

            try? container.encodeIfPresent(refType, forKey: .refType)
        }
    }
}
