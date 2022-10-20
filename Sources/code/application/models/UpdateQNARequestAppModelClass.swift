

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateQNARequest
         Used By: Feedback
     */
    class UpdateQNARequest: Codable {
        public var active: Bool?

        public var approve: Bool?

        public var choices: [String]?

        public var id: String?

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case active

            case approve

            case choices

            case id

            case tags
        }

        public init(active: Bool? = nil, approve: Bool? = nil, choices: [String]? = nil, id: String? = nil, tags: [String]? = nil) {
            self.active = active

            self.approve = approve

            self.choices = choices

            self.id = id

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                approve = try container.decode(Bool.self, forKey: .approve)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                choices = try container.decode([String].self, forKey: .choices)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(choices, forKey: .choices)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
