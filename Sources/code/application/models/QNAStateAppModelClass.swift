

import Foundation
public extension ApplicationClient {
    /*
         Model: QNAState
         Used By: Feedback
     */
    class QNAState: Codable {
        public var active: Bool?

        public var approve: Bool?

        public var modify: Bool?

        public var priority: Int?

        public var reply: Bool?

        public var vote: Bool?

        public enum CodingKeys: String, CodingKey {
            case active

            case approve

            case modify

            case priority

            case reply

            case vote
        }

        public init(active: Bool? = nil, approve: Bool? = nil, modify: Bool? = nil, priority: Int? = nil, reply: Bool? = nil, vote: Bool? = nil) {
            self.active = active

            self.approve = approve

            self.modify = modify

            self.priority = priority

            self.reply = reply

            self.vote = vote
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
                modify = try container.decode(Bool.self, forKey: .modify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reply = try container.decode(Bool.self, forKey: .reply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vote = try container.decode(Bool.self, forKey: .vote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(modify, forKey: .modify)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(reply, forKey: .reply)

            try? container.encodeIfPresent(vote, forKey: .vote)
        }
    }
}
