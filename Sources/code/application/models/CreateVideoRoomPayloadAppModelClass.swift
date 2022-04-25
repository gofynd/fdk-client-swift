

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateVideoRoomPayload
         Used By: Lead
     */
    class CreateVideoRoomPayload: Codable {
        public var uniqueName: String

        public var notify: [NotifyUser]?

        public enum CodingKeys: String, CodingKey {
            case uniqueName = "unique_name"

            case notify
        }

        public init(notify: [NotifyUser]? = nil, uniqueName: String) {
            self.uniqueName = uniqueName

            self.notify = notify
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueName = try container.decode(String.self, forKey: .uniqueName)

            do {
                notify = try container.decode([NotifyUser].self, forKey: .notify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)

            try? container.encodeIfPresent(notify, forKey: .notify)
        }
    }
}
