import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: State
         Used By: Feedback
     */
    class State: Codable {
        public var active: Bool?

        public var approve: Bool?

        public var autoDecided: Bool?

        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case active

            case approve

            case autoDecided = "auto_decided"

            case status
        }

        public init(active: Bool?, approve: Bool?, autoDecided: Bool?, status: Int?) {
            self.active = active

            self.approve = approve

            self.autoDecided = autoDecided

            self.status = status
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
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
                autoDecided = try container.decode(Bool.self, forKey: .autoDecided)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(autoDecided, forKey: .autoDecided)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
