

import Foundation
public extension PlatformClient {
    /*
         Model: CampignEmailProvider
         Used By: Communication
     */

    class CampignEmailProvider: Codable {
        public var id: String?

        public var fromName: String?

        public var fromEmail: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case fromName = "from_name"

            case fromEmail = "from_email"
        }

        public init(fromEmail: String? = nil, fromName: String? = nil, id: String? = nil) {
            self.id = id

            self.fromName = fromName

            self.fromEmail = fromEmail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromName = try container.decode(String.self, forKey: .fromName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromEmail = try container.decode(String.self, forKey: .fromEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fromName, forKey: .fromName)

            try? container.encodeIfPresent(fromEmail, forKey: .fromEmail)
        }
    }
}
